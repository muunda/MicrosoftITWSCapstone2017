using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class signin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void submit(object sender, EventArgs e)
    {
        //string sql = "INSERT INTO [Messages] ([Name],[Message]) VALUES (" +
        //    "'" + txt_Name.Value.ToString() + "'," +
        //    " '" + txt_Message.Value.ToString() + "')"
        //       ;
        //try
        //{
        //    DataSet ds = new DataSet();
        //    using (SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["DBConnectionString"]))
        //    {
        //        conn.Open();
        //        // 1. declare command object with parameter
        //        SqlCommand cmd = conn.CreateCommand();
        //        cmd.CommandText = sql;

        //        // 2. define parameters used in command object
        //        //SqlParameter param = new SqlParameter();
        //        //param.ParameterName = "@qkid";
        //        //param.Value = "''";

        //        // 3. add new parameter to command object
        //        //cmd.Parameters.Add(param);

        //        // get data stream
        //        //SqlDataReader reader = null;
        //        int sqlInt = cmd.ExecuteNonQuery();

        //        // write each record
        //        //while (reader.Read())
        //        //{
        //        //    Console.WriteLine("{0}, {1}",
        //        //        reader["CompanyName"],
        //        //        reader["ContactName"]);
        //        //}
        //        conn.Close();
        //    }
        //    Response.Write(string.Format("<script>alert('Submitted Successfully！');location.href='index.aspx';</script>"));
        //    return;
        //}
        //catch
        //{
        //    Response.Write(string.Format("<script>alert('Unexpected error occurred！');</script>"));
        //    return;
        //}
    }
}