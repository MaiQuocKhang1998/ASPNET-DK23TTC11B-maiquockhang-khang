using System;
using System.Configuration;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string connectionString = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;

        // Cập nhật truy vấn SQL sử dụng bảng Users thay vì NguoiDung
        string query = "SELECT * FROM Users WHERE Username = @Username";

        using (SqlConnection conn = new SqlConnection(connectionString))
        {
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@Username", txtUsername.Text);  // Sử dụng TextBox
            cmd.Parameters.AddWithValue("@Password", txtPassword.Text);  // Sử dụng TextBox

            try
            {
                conn.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.Read() && reader["Password"].ToString() == txtPassword.Text)
                {
                    // Lưu thông tin người dùng vào session
                    Session["Username"] = txtUsername.Text;
                    Response.Redirect("TrangChu.aspx");
                }
                else
                {
                    lblError.Text = "Tên đăng nhập hoặc mật khẩu không đúng.";
                }
            }
            catch (Exception ex)
            {
                lblError.Text = "Lỗi kết nối cơ sở dữ liệu: " + ex.Message;
            }
        }
    }
}
