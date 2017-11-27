using System;
using System.IO;
using System.Threading;
using System.Threading.Tasks;
using Microsoft.Bing.Speech;

/// <summary>
/// This sample program shows how to use <see cref="SpeechClient"/> APIs to perform speech recognition.
/// </summary>
public class Speech2Text
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

    /// <summary>
    /// The entry point to this sample program. It validates the input arguments
    /// and sends a speech recognition request using the Microsoft.Bing.Speech APIs.
    /// </summary>
    /// <param name="args">The input arguments.</param>
    //public static void Main(string[] args)
    //{
    //    // Validate the input arguments count.
    //    if (args.Length < 4)
    //    {
    //        DisplayHelp("Invalid number of arguments.");
    //        return;
    //    }

    //    // Ensure the audio file exists.
    //    if (!File.Exists(args[0]))
    //    {
    //        DisplayHelp("Audio file not found.");
    //        return;
    //    }

    //    if (!"long".Equals(args[2], StringComparison.OrdinalIgnoreCase) && !"short".Equals(args[2], StringComparison.OrdinalIgnoreCase))
    //    {
    //        DisplayHelp("Invalid RecognitionMode.");
    //        return;
    //    }

    //    // Send a speech recognition request for the audio.
    //    var p = new Program();
    //    p.Run(args[0], args[1], char.ToLower(args[2][0]) == 'l' ? LongDictationUrl : ShortPhraseUrl, args[3]).Wait();
    //}

    /// <summary>
    /// Invoked when the speech client receives a partial recognition hypothesis from the server.
    /// </summary>
    /// <param name="args">The partial response recognition result.</param>
    /// <returns>
    /// A task
    /// </returns>
    public Task OnPartialResult(RecognitionPartialResult args)
    {
        Console.WriteLine("--- Partial result received by OnPartialResult ---");

        // Print the partial response recognition hypothesis.
        Console.WriteLine(args.DisplayText);

        Console.WriteLine();

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
        Console.WriteLine();

        Console.WriteLine("--- Phrase result received by OnRecognitionResult ---");

        // Print the recognition status.
        Console.WriteLine("***** Phrase Recognition Status = [{0}] ***", response.RecognitionStatus);
        if (response.Phrases != null)
        {
            foreach (var result in response.Phrases)
            {
                // Print the recognition phrase display text.
                Console.WriteLine("{0} (Confidence:{1})", result.DisplayText, result.Confidence);
            }
        }

        Console.WriteLine();
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
    public async Task Run(string audioFile, string locale, Uri serviceUrl, string subscriptionKey)
    {
        // create the preferences object
        var preferences = new Preferences("en-US", serviceUrl, new CognitiveServicesAuthorizationProvider("c26f94bbc00e4c98a0ee0cde5833506a"));

        // Create a a speech client
        using (var speechClient = new SpeechClient(preferences))
        {
            speechClient.SubscribeToPartialResult(this.OnPartialResult);
            speechClient.SubscribeToRecognitionResult(this.OnRecognitionResult);

            // create an audio content and pass it a stream.
            using (var audio = new FileStream(audioFile, FileMode.Open, FileAccess.Read))
            {
                var deviceMetadata = new DeviceMetadata(DeviceType.Near, DeviceFamily.Desktop, NetworkType.Ethernet, OsName.Windows, "1607", "Dell", "T3600");
                var applicationMetadata = new ApplicationMetadata("SampleApp", "1.0.0");
                var requestMetadata = new RequestMetadata(Guid.NewGuid(), deviceMetadata, applicationMetadata, "SampleAppService");

                await speechClient.RecognizeAsync(new SpeechInput(audio, requestMetadata), this.cts.Token).ConfigureAwait(false);
            }
        }
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
