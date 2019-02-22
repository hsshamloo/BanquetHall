using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CateringPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        FoodOrders newFoodOrder = new FoodOrders();
        int numberOfNewOrder =
            newFoodOrder.numberOfResereveHasFoodOrder("تایید مدیریت", "معلق");
        NumHL.Text = numberOfNewOrder.ToString();

    }
}