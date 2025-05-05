using System;
using System.Data.SqlClient;
using System.Configuration;

public partial class Thongtincanhan : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Username"] == null)
        {
            Response.Redirect("Login.aspx");
            return;
        }

        string username = Session["Username"].ToString();
        string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
        string query = "SELECT * FROM Users WHERE Username = @Username";

        using (SqlConnection conn = new SqlConnection(connStr))
        {
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@Username", username);
            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                lblUsername.Text = reader["Username"].ToString();
                lblEmail.Text = reader["Email"].ToString();
                lblPhone.Text = reader["Phone"].ToString();
                lblCreateDate.Text = Convert.ToDateTime(reader["CreateDate"]).ToString("dd/MM/yyyy HH:mm");
            }
        }
    }
}
