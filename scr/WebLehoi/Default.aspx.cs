using System;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnLogout_Click(object sender, EventArgs e)
    {
        // Xóa session khi người dùng đăng xuất
        Session.Abandon();

        // Chuyển hướng về trang TrangChu.aspx
        Response.Redirect("TrangChu.aspx");
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        Response.Redirect("Register.aspx");
    }
}
