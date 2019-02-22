using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

public partial class Catering_AllFoodReservationInformation : System.Web.UI.Page
{
    ReservationAndCancelation racObject = new ReservationAndCancelation();
    FoodOrders foObject = new FoodOrders();
    protected void Page_Load(object sender, EventArgs e)
    {
     
        DataBaseConnection db = new DataBaseConnection();
        ReservationAndCancelation reseAndCancObj = new ReservationAndCancelation();
        List<ReservationTable> reservationObj = reseAndCancObj.showPendingReserveInformation("تایید مدیریت");

        foreach (var info in reservationObj)
        {
            //اگر برای تالار سفارشی خوراک سفارش داده شده باشد ، اطلاعات آن نمایش داده میشود
            if (foObject.hassFoodOrder(info.ReservationId)
                && info.ReserveDate >= DateTime.Now)
            {
                HyperLink hlToFactorOfReserve = new HyperLink();
                hlToFactorOfReserve.ForeColor = Color.White;

                string billTitel = db.toPersianDate(info.ReserveDate);
                hlToFactorOfReserve.Text = billTitel;

                hlToFactorOfReserve.NavigateUrl = "~/Catering/FoodReservedReport.aspx?ReserveId=" + info.ReservationId;
                Panel2.Controls.Add(new LiteralControl("</br>"));
                Panel2.Controls.Add(new LiteralControl("</br>"));

                Panel2.Controls.Add(new LiteralControl("</br>"));
                Panel2.Controls.Add(hlToFactorOfReserve);
            }
        }
    }
}