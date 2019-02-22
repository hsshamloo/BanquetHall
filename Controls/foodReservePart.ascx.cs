using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_foodReservePart : System.Web.UI.UserControl
{
    Foods foodObj = new Foods();
    Members userInfo;
    private string foodType, reserveId, email;

    public string Email
    {
        get { return email; }
        set { email = value; }
    }

    public string ReserveId
    {
        get { return reserveId; }
        set { reserveId = value; }
    }

    public string FoodType
    {
        get { return foodType; }
        set { foodType = value; }
    }
    private Array dataSourceFoodName;

    public Array DataSourceFoodName
    {
        get { return dataSourceFoodName; }
        set { dataSourceFoodName = value; }
    }
    decimal priceOfFood;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            foodTypeLb.Text = foodType;
            foodNameDropDown.DataSource = dataSourceFoodName;
            if (!IsPostBack)
            {
                foodNameDropDown.DataBind();
            }
            ReserveId = HttpContext.Current.Session["ReserveId"].ToString();
            userInfo = (Members)HttpContext.Current.Session["ValidUser"];
            email = userInfo.email;
        }
        catch (Exception)
        {
            Response.Redirect("~/Default.aspx");
        }


    }
    protected void addBtn_Click(object sender, EventArgs e)
    {
     int numberOfFood = int.Parse(numberOfFoodTxt.Text);
        FoodOrders newOrder = new FoodOrders();
        Foods foodToChose = new Foods().retriveFoodInfoByName
            (foodNameDropDown.SelectedValue);

        newOrder.Count = numberOfFood;
        newOrder.FoodName = foodToChose.FoodName;
        newOrder.FoodId = foodToChose.FoodId;
        priceOfFood = foodToChose.FoodPrice;

        newOrder.Price = numberOfFood * priceOfFood;
        newOrder.ReservationId = reserveId;
        newOrder.Email = email;
        newOrder.SubmitDate = DateTime.Now;

        newOrder.reserveFood(newOrder);
        Response.Redirect("~/Costumer/FoodReservation.aspx");

    }

    protected void foodNameDropDown_SelectedIndexChanged1(object sender, EventArgs e)
    {
        foodCost.Text = priceOfFood.ToString();
    }
}