using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_ShowFoodInfo : System.Web.UI.UserControl
{
    private Foods foodInfo;

    public Foods FoodInfo
    {
        get { return foodInfo; }
        set { foodInfo = value; }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        foodNamelb.Text = foodInfo.FoodName;
        foodPriceLb.Text = ((int)foodInfo.FoodPrice).ToString();
        

    }
}