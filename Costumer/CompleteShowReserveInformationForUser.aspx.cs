using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CompleteShowReserveInformationForUser : System.Web.UI.Page
{
    string reserveId;
    protected void Page_Load(object sender, EventArgs e)
    {
        string reserveId = Request.QueryString["ReserveId"];
        CompleteReserveInfoForUser1.ReserveId = reserveId;
        Session.Add("ReserveId", reserveId);
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect(@"~/Costumer/FoodReservation.aspx");
    }
}