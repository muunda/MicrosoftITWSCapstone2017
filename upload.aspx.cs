using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.IO;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class upload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            String CaseNumber = case_Number.Value.ToString();
            if (CaseNumber == null || CaseNumber == string.Empty)
            {
                Response.Write(SqlHelper.MsgAlert("You must enter the case number!!!"));
                return;
            }

            HttpPostedFile UpFile = upfile.PostedFile;
            Byte[] FileByteArray = new Byte[1];
            int FileLength = UpFile.ContentLength;
            if (UpFile == null || FileLength == 0)
            {
                Response.Write(SqlHelper.MsgAlert("You cannot upload an empty file!!!"));
                Response.End();
            }

            String file_name = Path.GetFileName(UpFile.FileName);
            if (!(file_name.ToLower().EndsWith(".wav")))
            {
                Response.Write(SqlHelper.MsgAlert("At this moment, only WAV format is accepted!"));
                Response.End();
            }
            FileByteArray = new Byte[FileLength];
            UpFile.InputStream.Read(FileByteArray, 0, FileLength);//


            //
            string upload_file_dir = ConfigurationManager.AppSettings["WAVFileLocation"];
            FileStream newFile = new FileStream(upload_file_dir + @"\" + file_name, FileMode.Create);
            newFile.Write(FileByteArray, 0, FileByteArray.Length);
            newFile.Close();

            string sql = "INSERT INTO [CaseConversation] ([CaseNumber],[AudioFileName]) VALUES (" +
            "'" + CaseNumber + "'," +
            " '" + file_name + "'); SELECT CAST(scope_identity() AS int);"
            ;
            Int32 sqlInt;
            try
            {
                DataSet ds = new DataSet();
                using (SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["DBConnectionString"]))
                {
                    conn.Open();
                    // 1. declare command object with parameter
                    SqlCommand cmd = conn.CreateCommand();
                    cmd.CommandText = sql;

                    // 2. define parameters used in command object
                    //SqlParameter param = new SqlParameter();
                    //param.ParameterName = "@qkid";
                    //param.Value = "''";

                    // 3. add new parameter to command object
                    //cmd.Parameters.Add(param);

                    // get data stream
                    //SqlDataReader reader = null;
                    sqlInt = (Int32)cmd.ExecuteScalar();

                    // write each record
                    //while (reader.Read())
                    //{
                    //    Console.WriteLine("{0}, {1}",
                    //        reader["CompanyName"],
                    //        reader["ContactName"]);
                    //}
                    conn.Close();
                }
            }
            catch (Exception e1)
            {
                Response.Write(string.Format("<script>alert('Unexpected error occurred！');</script>"));
                return;
            }
            string url = string.Format("~/single_call.aspx?file={0}", sqlInt);
            Response.Redirect(url);
            return;
        }
    }
}