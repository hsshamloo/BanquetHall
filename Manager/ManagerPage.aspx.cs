using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ManagerPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Redirector("مدیر");
        
        ReservationAndCancelation rACObject = new ReservationAndCancelation();
        ItemInWarehouse iIWObject = new ItemInWarehouse();
        Members memObject = new Members();

        int numberOfNewReserve = rACObject.numberOfPendingReseve("معلق");
        int numberOfItemToBuy = iIWObject.numberOfItemNeedToBuy("مورد نیاز");
        int numbeOfNewUser = memObject.numberOfSameTypeRoleUser("UnValid");

        NNRhl.NavigateUrl = "~//Manager/ReportPendingReserveInfo.aspx?StatusOfReserve=" + "معلق";
        NNUhl.NavigateUrl = "~/Manager/ChangeUserRoleType.aspx";
        INBhl.NavigateUrl = "~/Manager/ReportItemToBuy.aspx";
        NNRhl.Text = numberOfNewReserve.ToString();
        INBhl.Text = numberOfItemToBuy.ToString();
        NNUhl.Text = numbeOfNewUser.ToString();
  
    }

   
    private void Redirector(string UserType)
    {
       if (Session["ValidUser"] == null)
        {
            Response.Redirect("~/SecondLogIn.aspx");
        }
        else 
        {
            if (Session["UserRoleType"].ToString() != UserType)
            {
                Response.Redirect("~/Default.aspx");
            }
        }
    }
}