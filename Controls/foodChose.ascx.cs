using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_foodChose : System.Web.UI.UserControl
{
    Foods foodInfo = new Foods();
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

    string foodTypeSelected;
    string foodNameSelected;
    decimal foodPrice;
    protected void Page_Load(object sender, EventArgs e)
    {
        Array foodTypeAvailable = foodInfo.retriveFoodType();
        foodTypeDropList.DataSource = foodTypeAvailable;


        if (!IsPostBack)
        {
            foodTypeDropList.DataBind();
        }
        else
        {
            foodTypeSelected = foodTypeDropList.SelectedValue;
           
        }
        try
        {
            ReserveId = HttpContext.Current.Session["ReserveId"].ToString();
            userInfo = (Members)HttpContext.Current.Session["ValidUser"];
            email = userInfo.email;
        }
        catch (Exception x)
        {
            System.Windows.Forms.MessageBox.Show("خطا در "+ x.Message);
            Response.Redirect("~/Default.aspx");
        }
        
        
    }
    protected void foodTypeDropList_SelectedIndexChanged(object sender, EventArgs e)
    {
        Array foodNameAvalilabeInSameType =
            foodInfo.reriveFoodInfoWithSameType(foodTypeSelected);
        foodNameDropDown.DataSource = foodNameAvalilabeInSameType;
         foodNameDropDown.DataBind();
        
        foodPrice = foodInfo.RetriveFoodPrice(foodNameDropDown.SelectedValue);
         foodCost.Text = ((int)foodPrice).ToString();


    }
    protected void foodNameDropDown_SelectedIndexChanged(object sender, EventArgs e)
    {
         foodPrice = foodInfo.RetriveFoodPrice(foodNameDropDown.SelectedValue);
        foodCost.Text = ((int)foodPrice).ToString();
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
        foodPrice = foodToChose.FoodPrice;

        newOrder.Price = numberOfFood * foodPrice;
        newOrder.ReservationId = reserveId;
        newOrder.Email = email;
        newOrder.SubmitDate = DateTime.Now;
        newOrder.StatusOfOrder = "معلق";

        newOrder.reserveFood(newOrder);
        Response.Redirect("~/Costumer/FoodReservation.aspx");
    }
}