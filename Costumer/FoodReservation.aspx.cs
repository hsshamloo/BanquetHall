using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FoodReservation : System.Web.UI.Page
{
    decimal priceOfReserveHall = 0;// هزینه ی تالار
    decimal priceOfFoods = 0;//هزینه غذا
    decimal overalCost = 0;//هزینه کل
    string reserveId;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (IsPostBack)
            {
                GridView1.DataBind();
            }
          

            FoodOrders foodOrderObject = new FoodOrders();
            ReservationAndCancelation racObject = new ReservationAndCancelation();

            reserveId = Session["ReserveId"].ToString();

                //هزینه ی کل غذاهای سفارش داده شده را محاسبه می کنیم 
                priceOfFoods = foodOrderObject.fullPriceOfReserve(reserveId);
                //هزینه کل غذا های سفارش داده شده را نمایش می دهد
                foodPriceLb.Text =((int) priceOfFoods).ToString();

                //هزینه ی کل تالار  سفارش داده شده را محاسبه می کنیم 
                priceOfReserveHall =( racObject.RetrivePriceOfReserve(reserveId));
                //هزینه ی کل تالار  سفارش داده شده را نمایش می دهد
                hallReserveCostLb.Text = ((int)priceOfReserveHall).ToString();

                //هزینه ی کل را محاسبه می کند
                overalCost = priceOfFoods + priceOfReserveHall;
                //هزینه ی کل را نمایش می دهد 
                overalCostLb.Text = (((int)overalCost).ToString());
     
        }
        catch (Exception)
        {
            System.Windows.Forms.MessageBox.Show("اطلاعات موجود نیست");
        }
    }
    protected void finalReserveBtn_Click(object sender, ImageClickEventArgs e)
    {
        BillAndPayment bapObject = new BillAndPayment();

        Session.Add("foodOrderfullPrice", priceOfFoods);

        if (bapObject.hasBill(reserveId))
        {
            Response.Redirect("~/Costumer/NewBillReportForm.aspx");
        }
        else
        {
            Response.Redirect(@"~/Costumer/FinalBill.aspx");
        }
    }
    protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        Response.Redirect("~/Costumer/FoodReservation.aspx");
    }
}


