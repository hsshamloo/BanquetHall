using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

public partial class PhotoUploader : System.Web.UI.Page
{
    private string messageFromRegisterhall;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            GridView1.DataBind();
        }
        if (Session["IdOfRegisteredHall"] != null)
        {
            messageFromRegisterhall = Session["IdOfRegisteredHall"].ToString();
            if (!messageFromRegisterhall.Contains("Hall"))
            {
                Panel2.Controls.Clear();
                Label statusLb = new Label();
                statusLb.Text = messageFromRegisterhall;
                statusLb.ForeColor = Color.Yellow;
                Panel2.Controls.Add(statusLb);
                Panel2.Controls.Add(new LiteralControl("<br/><br/>"));
                HyperLink backLink = new HyperLink();

                backLink.Text = "بازگشت";
                backLink.NavigateUrl = @"~/RegisterHalls.aspx";
                backLink.ForeColor = Color.White;
                Panel2.Controls.Add(backLink);
            }

            else
            {
                //UploadPhoto1.HallId = messageFromRegisterhall;
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
    }
}