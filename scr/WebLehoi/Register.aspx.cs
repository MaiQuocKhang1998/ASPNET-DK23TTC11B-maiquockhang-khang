using System;
using System.Configuration;
using System.Data.SqlClient;

public partial class Register : System.Web.UI.Page
{
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        string connectionString = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
        string username = txtUsername.Text.Trim();
        string password = txtPassword.Text.Trim();
        string confirmPassword = txtConfirmPassword.Text.Trim();  // nhập lại mật khẩu
        string email = txtEmail.Text.Trim();
        string phone = txtPhone.Text.Trim();

        // Kiểm tra không để trống
        if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password) || string.IsNullOrEmpty(confirmPassword))
        {
            lblMessage.Text = "Vui lòng nhập đầy đủ tên đăng nhập và mật khẩu.";
            return;
        }

        // Kiểm tra mật khẩu và nhập lại mật khẩu
        if (password != confirmPassword)
        {
            lblMessage.Text = "Mật khẩu và nhập lại mật khẩu không khớp.";
            return;
        }

        using (SqlConnection conn = new SqlConnection(connectionString))
        {
            conn.Open();

            // Kiểm tra trùng tài khoản
            string checkUserSql = "SELECT COUNT(*) FROM Users WHERE Username = @Username";
            SqlCommand checkCmd = new SqlCommand(checkUserSql, conn);
            checkCmd.Parameters.AddWithValue("@Username", username);

            int count = (int)checkCmd.ExecuteScalar();
            if (count > 0)
            {
                lblMessage.Text = "Tên đăng nhập đã tồn tại. Vui lòng chọn tên khác.";
                return;
            }

            // Thêm người dùng mới nếu hợp lệ
            string query = "INSERT INTO Users (Username, Password, Email, Phone, CreateDate) VALUES (@Username, @Password, @Email, @Phone, @CreateDate)";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@Username", username);
            cmd.Parameters.AddWithValue("@Password", password);
            cmd.Parameters.AddWithValue("@Email", email);
            cmd.Parameters.AddWithValue("@Phone", phone);
            cmd.Parameters.AddWithValue("@CreateDate", DateTime.Now);

            try
            {
                cmd.ExecuteNonQuery();
                Response.Redirect("Login.aspx");
            }
            catch (Exception ex)
            {
                lblMessage.Text = "Lỗi đăng ký: " + ex.Message;
            }
        }
    }
}
