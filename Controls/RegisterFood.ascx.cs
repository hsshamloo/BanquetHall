using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_RegisterFood : System.Web.UI.UserControl
{
    Foods foodInfo = new Foods();
    protected void Page_Load(object sender, EventArgs e)
    {
        Array foodTypeDataSource = foodInfo.retriveFoodType();
        foodTypeDropList.DataSource = foodTypeDataSource;

        if (!IsPostBack)
        {
            foodTypeDropList.DataBind();
        }

    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {

        if (foodTypeDropList.Visible)
        {
            RequiredfoodType.Visible = false;
            foodTypeDropList.Visible = false;
            foodTypeTxt.Visible = true;
            foodTypeLb.Visible = true;
            foodTypeValidCon.Visible = true;
        }
        else
        {
            RequiredfoodType.Visible = true;
            foodTypeDropList.Visible = true;
            foodTypeTxt.Visible = false;
            foodTypeLb.Visible = false;
            foodTypeValidCon.Visible = false;
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        foodInfo.FoodName = foodNameTxt.Text;
        if (addNewFoodType.Checked)
        {
            foodInfo.FoodType = foodTypeTxt.Text;
        }
        else
        {
            foodInfo.FoodType = foodTypeDropList.SelectedValue;
        }
        foodInfo.FoodPrice = decimal.Parse(foodPriceTxt.Text);


        int message = foodInfo.registerNewFood(foodInfo);
        switch (message)
        {
            case 1: System.Windows.Forms.MessageBox.Show("این غذا قبلا ثبت شده است");
                Response.Redirect(@"~/Catering/FoodInformationRegisterAndEdit.aspx"); break;
            case 2: System.Windows.Forms.MessageBox.Show("غذا با موفقیت ثبت گردید");
                Response.Redirect(@"~/Catering/FoodInformationRegisterAndEdit.aspx"); break;
            default: System.Windows.Forms.MessageBox.Show("خطا در هنگام ثبت غذا");
                Response.Redirect(@"~/Catering/FoodInformationRegisterAndEdit.aspx"); break;
        }
    }
}