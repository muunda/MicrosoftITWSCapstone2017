using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Threading;
using System.Threading.Tasks;
using Microsoft.Bing.Speech;
using System.Text;
using System.Configuration;
using Microsoft.Azure.CognitiveServices.Language.TextAnalytics;
using Microsoft.Azure.CognitiveServices.Language.TextAnalytics.Models;
using System.Data.SqlClient;
using System.Data;

public partial class single_call : System.Web.UI.Page
{
    /// <summary>
    /// Short phrase mode URL
    /// </summary>
    private static readonly Uri ShortPhraseUrl = new Uri(@"wss://speech.platform.bing.com/api/service/recognition");

    /// <summary>
    /// The long dictation URL
    /// </summary>
    private static readonly Uri LongDictationUrl = new Uri(@"wss://speech.platform.bing.com/api/service/recognition/continuous");

    /// <summary>
    /// A completed task
    /// </summary>
    private static readonly Task CompletedTask = Task.FromResult(true);

    /// <summary>
    /// Cancellation token used to stop sending the audio.
    /// </summary>
    private readonly CancellationTokenSource cts = new CancellationTokenSource();

    protected string Msg = "";
    protected string filename = "";
    protected Int32 sqlInt = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (HttpContext.Current.Request.QueryString["file"] != null)
        {
            sqlInt = Convert.ToInt32(HttpContext.Current.Request.QueryString["file"].Trim());
        }
        string sql = "select * from [CaseConversation] where id =" + sqlInt + ";";
        using (SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["DBConnectionString"]))
        {
            // 1. declare command object with parameter
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = sql;
            // 2. define parameters used in command object
            //SqlParameter param = new SqlParameter();
            //param.ParameterName = "@qkid";
            //param.Value = "''";

            // 3. add new parameter to command object
            //cmd.Parameters.Add(param);
            SqlDataReader reader = null;
            reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                filename = reader["AudioFileName"].ToString().Trim();
            }
            reader.Close();
            cmd.Dispose();
            conn.Close();
        }
        string upload_file_dir = ConfigurationManager.AppSettings["WAVFileLocation"];
        filename = upload_file_dir + @"\" + filename;

        RegisterAsyncTask(new PageAsyncTask(Run));

        //Run(filename, "en-US", LongDictationUrl, "").Wait();
    }
    /// <summary>
    /// Invoked when the speech client receives a partial recognition hypothesis from the server.
    /// </summary>
    /// <param name="args">The partial response recognition result.</param>
    /// <returns>
    /// A task
    /// </returns>
    public Task OnPartialResult(RecognitionPartialResult args)
    {
        StringBuilder sb = new StringBuilder();
        sb.AppendFormat("--- Partial result received by OnPartialResult ---\n");

        // Print the partial response recognition hypothesis.
        sb.AppendFormat(args.DisplayText);

        sb.AppendFormat("\n\n");
        Msg += sb.ToString();

        return CompletedTask;
    }

    /// <summary>
    /// Invoked when the speech client receives a phrase recognition result(s) from the server.
    /// </summary>
    /// <param name="args">The recognition result.</param>
    /// <returns>
    /// A task
    /// </returns>
    public Task OnRecognitionResult(RecognitionResult args)
    {
        var response = args;
        StringBuilder sb = new StringBuilder();
        //sb.AppendFormat("\n");

        //sb.AppendFormat("--- Phrase result received by OnRecognitionResult ---\n");

        //// Print the recognition status.
        //sb.AppendFormat("***** Phrase Recognition Status = [{0}] ***\n", response.RecognitionStatus);
        if (response.Phrases != null)
        {
            //foreach (var result in response.Phrases)
            var result = response.Phrases[response.Phrases.Count() - 1];
            // Print the recognition phrase display text.
            sb.AppendFormat("{0} ", result.DisplayText);
        }

        Msg += sb.ToString();
        return CompletedTask;
    }

    /// <summary>
    /// Sends a speech recognition request to the speech service
    /// </summary>
    /// <param name="audioFile">The audio file.</param>
    /// <param name="locale">The locale.</param>
    /// <param name="serviceUrl">The service URL.</param>
    /// <param name="subscriptionKey">The subscription key.</param>
    /// <returns>
    /// A task
    /// </returns>
    public async Task Run()
    {
        // create the preferences object
        var preferences = new Preferences("en-US", LongDictationUrl, new CognitiveServicesAuthorizationProvider("c26f94bbc00e4c98a0ee0cde5833506a"));

        // Create a a speech client
        using (var speechClient = new SpeechClient(preferences))
        {
            //speechClient.SubscribeToPartialResult(this.OnPartialResult);
            speechClient.SubscribeToRecognitionResult(this.OnRecognitionResult);

            // create an audio content and pass it a stream.
            using (var audio = new FileStream(filename, FileMode.Open, FileAccess.Read))
            {
                var deviceMetadata = new DeviceMetadata(DeviceType.Near, DeviceFamily.Desktop, NetworkType.Ethernet, OsName.Windows, "1607", "Dell", "T3600");
                var applicationMetadata = new ApplicationMetadata("SampleApp", "1.0.0");
                var requestMetadata = new RequestMetadata(Guid.NewGuid(), deviceMetadata, applicationMetadata, "SampleAppService");

                await speechClient.RecognizeAsync(new SpeechInput(audio, requestMetadata), this.cts.Token).ConfigureAwait(false);
            }
        }
        // Create a client.
        ITextAnalyticsAPI client = new TextAnalyticsAPI();
        client.AzureRegion = AzureRegions.Westcentralus;
        client.SubscriptionKey = "922da2349b3f4d5f8d30cf175347ce7b";
        SentimentBatchResult result3 = client.Sentiment(
        new MultiLanguageBatchInput(
            new List<MultiLanguageInput>()
            {
                          new MultiLanguageInput("en", "0", Msg),
            }));


        // Printing sentiment results
        var document = result3.Documents[result3.Documents.Count() - 1];
        StringBuilder sb = new StringBuilder();
        sb.AppendFormat("Sentiment Score: {0:0.00}", document.Score);

        //Save to DB
        string sql = "update [CaseConversation] set [ConversationTranscript] = '" + Msg + "',";
        sql += "[SentimentScore] = " + document.Score + " where id = " + sqlInt + ";";
        using (SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["DBConnectionString"]))
        {
            // 1. declare command object with parameter
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = sql;
            // 2. define parameters used in command object
            //SqlParameter param = new SqlParameter();
            //param.ParameterName = "@qkid";
            //param.Value = "''";

            // 3. add new parameter to command object
            //cmd.Parameters.Add(param);
            int sqlInt2 = cmd.ExecuteNonQuery();

            cmd.Dispose();
            conn.Close();
        }
        Msg += "<br /> <br />" + sb.ToString();
    }

    /// <summary>
    /// Display the list input arguments required by the program.
    /// </summary>
    /// <param name="message">The message.</param>
    private static void DisplayHelp(string message = null)
    {
        if (string.IsNullOrEmpty(message))
        {
            message = "SpeechClientSample Help";
        }

        Console.WriteLine(message);
        Console.WriteLine();
        Console.WriteLine("Arg[0]: Specify an input audio wav file.");
        Console.WriteLine("Arg[1]: Specify the audio locale.");
        Console.WriteLine("Arg[2]: Recognition mode [Short|Long].");
        Console.WriteLine("Arg[3]: Specify the subscription key to access the Speech Recognition Service.");
        Console.WriteLine();
        Console.WriteLine("Sign up at https://www.microsoft.com/cognitive-services/ with a client/subscription id to get a client secret key.");
    }
}