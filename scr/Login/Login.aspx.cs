using System;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string username = txtUsername.Text.Trim();
        string password = txtPassword.Text.Trim();
        string connStr = ConfigurationManager.ConnectionStrings["LeHoiKConnection"].ConnectionString;

        using (SqlConnection conn = new SqlConnection(connStr))
        {
            string query = "SELECT COUNT(*) FROM [User] WHERE Username = @Username AND Password = @Password";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@Username", username);
            cmd.Parameters.AddWithValue("@Password", password);

            conn.Open();
            int result = (int)cmd.ExecuteScalar();

            if (result > 0)
            {
                Session["username"] = username;
                Response.Redirect("Default.aspx");
            }
            else
            {
                lblMessage.Text = "Sai tên đăng nhập hoặc mật khẩu.";
            }
        }
    }
}
