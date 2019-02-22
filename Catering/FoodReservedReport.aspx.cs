using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Catering_FoodReservedReport : System.Web.UI.Page
{
    string reserveId = null;
    FoodOrders fo = new FoodOrders();
    protected void Page_Load(object sender, EventArgs e)
    {
        reserveId = Request.QueryString["ReserveId"];
        ResIdLb.Text = reserveId;
        ReservationAndCancelation rac = new 
            ReservationAndCancelation().rertriveReserveInformation(reserveId);
        string memberName = new Members().memberNameByEmail(rac.Email);
        costNameLb.Text = memberName;

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        string message = fo.changeFoodOrderStatus(reserveId, "تایید آشپزخانه");
        System.Windows.Forms.MessageBox.Show(message);
        Response.Redirect("~/Catering/AllFoodReservationInformation.aspx");
    }
}