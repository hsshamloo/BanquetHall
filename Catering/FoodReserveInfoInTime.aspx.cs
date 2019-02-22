using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

public partial class Catering_FoodReserveInfoInTime : System.Web.UI.Page
{
    ReservationAndCancelation racObject = new ReservationAndCancelation();
    FoodOrders foObject = new FoodOrders();
    List<ReservationTable> reservationObj;
    DataBaseConnection db;
    protected void Page_Load(object sender, EventArgs e)
    {
       db  = new DataBaseConnection();
        ReservationAndCancelation reseAndCancObj = new ReservationAndCancelation();
       reservationObj = reseAndCancObj.showPendingReserveInformation("تایید مدیریت");
       if (!IsPostBack)
       {
           MultiView1.ActiveViewIndex = DropDownList1.SelectedIndex;
       }

    }
    
    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel2.Controls.Clear();
        foreach (var info in reservationObj)
        {
            //اگر برای تالار سفارشی خوراک سفارش داده شده باشد ، اطلاعات آن نمایش داده میشود
            if (foObject.hassFoodOrder(info.ReservationId)
                && info.ReserveDate == DatePicker1.Date.Value)
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel2.Controls.Clear();
        foreach (var info in reservationObj)
        {
            //اگر برای تالار سفارشی خوراک سفارش داده شده باشد ، اطلاعات آن نمایش داده میشود
            if (foObject.hassFoodOrder(info.ReservationId)
                && info.ReserveDate <= DatePicker3.Date.Value
                && DatePicker2.Date.Value<= info.ReserveDate)
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
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = DropDownList1.SelectedIndex;
    }
}