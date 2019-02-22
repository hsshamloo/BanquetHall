using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Linq;


public partial class RegisterNewHall : System.Web.UI.UserControl
{
    DataClassesDataContext context = new DataClassesDataContext();
    ReceptionHalls registerNewtHall = new ReceptionHalls();
    ReceptionHalls newHallInfo = new ReceptionHalls();


    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

        newHallInfo.HallName = hallNameTxt.Text;
        newHallInfo.HallType = HalTypeTxt.SelectedValue;
        newHallInfo.Capacity = int.Parse(hallCapacityTxt.Text);
        newHallInfo.HallDescription = HallFullDescriptionTxt.Text;
        newHallInfo.PricePerPerson = int.Parse(hallPriceTxt.Text);
        try
        {

            HttpContext.Current.Session.Add("IdOfRegisteredObject", registerNewtHall.registerNewHall(newHallInfo));
            System.Windows.Forms.MessageBox.Show("تالار با موفقیت ثبت گردید ، به مرحله ی اضافه کردن تصویر منتقل می شود", "پیام سیستم");
            Response.Redirect(@"~/Manager/PhotoUploader.aspx");

        }

        catch (Exception)
        {


        }

    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {

    }
}
