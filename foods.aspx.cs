using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class foods : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Foods foodobject = new Foods();
        List<FoodInfoTable> foodInfoobject = foodobject.retriveAllFoodInformation();
        foreach (var foodIn in foodInfoobject)
        {
            foodobject = new Foods();
            foodobject.FoodName = foodIn.FoodName;
            foodobject.FoodPrice = foodIn.Price;
            Controls_ShowFoodInfo showFoodInfoobObj = (Controls_ShowFoodInfo)LoadControl(@"~/Controls/ShowFoodInfo.ascx");
            showFoodInfoobObj.FoodInfo = foodobject;
            Panel2.Controls.Add(showFoodInfoobObj);
        }

    }
}