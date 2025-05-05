using System;
using System.Configuration;
using System.Data.SqlClient;

public partial class saveComment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string commentText = Request.Form["commentText"];
        string commentAuthor = Request.Form["commentAuthor"];

        if (!string.IsNullOrEmpty(commentText) && !string.IsNullOrEmpty(commentAuthor))
        {
            string connectionString = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO Comments (Author, Text, Date) VALUES (@Author, @Text, @Date)";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@Author", commentAuthor);
                cmd.Parameters.AddWithValue("@Text", commentText);
                cmd.Parameters.AddWithValue("@Date", DateTime.Now);

                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
            }
        }
    }
}
