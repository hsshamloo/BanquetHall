using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OrderNewItem : System.Web.UI.Page
{


    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Add("DateOfNow", DateTime.Now);
        ItemInWarehouse newItemObjcet = new ItemInWarehouse();
        ItemOrderInfoTable itObject = new ItemOrderInfoTable();
        decimal fullPrice = new ItemOrder().fullPriceOfOrder();
        //totalCostLb.Text = ((int)fullPrice).ToString();
    }

    protected void finalReserveBtn_Click(object sender, ImageClickEventArgs e)
    {
        System.Windows.Forms.MessageBox.Show("سفارش انجام شد");
        Response.Redirect("~/Catering/CateringPage.aspx");
    }
}

