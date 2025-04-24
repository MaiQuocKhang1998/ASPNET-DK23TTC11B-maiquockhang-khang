using System;
using System.Data.SqlClient;

public partial class FestivalDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack && Request.QueryString["id"] != null)
        {
            int id;
            if (int.TryParse(Request.QueryString["id"], out id))
            {
                var festival = Festival.GetFestivalById(id);
                if (festival != null)
                {
                    lblName.Text = festival.Name;
                    lblDescription.Text = festival.Description;
                    imgFestival.Src = festival.ImageUrl;
                    FestivalPanel.Visible = true;
                }
                else
                {
                    lblError.Text = "Không tìm thấy lễ hội.";
                    lblError.Visible = true;
                }
            }
        }
    }
}
