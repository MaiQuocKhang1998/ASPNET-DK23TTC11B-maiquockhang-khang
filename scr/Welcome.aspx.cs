using System;

public partial class Welcome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null)
            lblUsername.Text = Session["username"].ToString();
        else
            Response.Redirect("Login.aspx");
    }
}
