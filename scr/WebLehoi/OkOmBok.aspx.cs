using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class OkOmBok : System.Web.UI.Page
{
    string connectionString = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadComments();
        }
    }

    protected void btnComment_Click(object sender, EventArgs e)
    {
        using (SqlConnection conn = new SqlConnection(connectionString))
        {
            string query = "INSERT INTO BinhLuan (Ten, NoiDung, LeHoi) VALUES (@Ten, @NoiDung, 'OkOmBok')";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@Ten", txtName.Text.Trim());
            cmd.Parameters.AddWithValue("@NoiDung", txtComment.Text.Trim());
            conn.Open();
            cmd.ExecuteNonQuery();
        }

        txtName.Text = "";
        txtComment.Text = "";
        LoadComments();
    }

    private void LoadComments()
    {
        using (SqlConnection conn = new SqlConnection(connectionString))
        {
            string query = "SELECT Ten, NoiDung FROM BinhLuan WHERE LeHoi = 'OkOmBok' ORDER BY Id DESC";
            SqlDataAdapter da = new SqlDataAdapter(query, conn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            rptComments.DataSource = dt;
            rptComments.DataBind();
        }
    }
    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Abandon();
        Response.Redirect("Default.aspx");
    }
}
