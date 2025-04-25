using System;
using System.Data.SqlClient;
using System.Configuration;

public partial class Register : System.Web.UI.Page
{
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        string username = txtUsername.Text.Trim();
        string password = txtPassword.Text.Trim();
        string connStr = ConfigurationManager.ConnectionStrings["LeHoiKConnection"].ConnectionString;

        using (SqlConnection conn = new SqlConnection(connStr))
        {
            string checkUserQuery = "SELECT COUNT(*) FROM [User] WHERE Username = @Username";
            SqlCommand checkCmd = new SqlCommand(checkUserQuery, conn);
            checkCmd.Parameters.AddWithValue("@Username", username);

            conn.Open();
            int userExists = (int)checkCmd.ExecuteScalar();

            if (userExists > 0)
            {
                lblMessage.Text = "Tên đăng nhập đã tồn tại.";
                return;
            }

            string insertQuery = "INSERT INTO [User] (Username, Password) VALUES (@Username, @Password)";
            SqlCommand insertCmd = new SqlCommand(insertQuery, conn);
            insertCmd.Parameters.AddWithValue("@Username", username);
            insertCmd.Parameters.AddWithValue("@Password", password); // bạn nên hash mật khẩu nếu dùng thật

            int result = insertCmd.ExecuteNonQuery();
            if (result > 0)
            {
                lblMessage.ForeColor = System.Drawing.Color.Green;
                lblMessage.Text = "Đăng ký thành công!";
            }
            else
            {
                lblMessage.Text = "Đăng ký thất bại.";
            }
        }
    }
}
