using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserPanelControl : System.Web.UI.UserControl
{
    private string gender, fName, lName; 
    public UserPanelControl()
    {
        
        
    }

    public void assignInformation(Members member)
    {
        fName = member.fName;
        lName = member.lName;
        gender = member.gender;
        string message = gender + " " + fName + " " + lName;
        NameOfUser.Text = message;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        HttpContext.Current.Session["ValidUser"] = null;
        Response.Redirect("~/Default.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Members memberObj = (Members)HttpContext.Current.Session["ValidUser"];
        switch (memberObj.roleType)
        {
            case "مشتری": Response.Redirect(@"~/Costumer/UsersPage.aspx"); break;
            case "مدیر": Response.Redirect(@"~/Manager/ManagerPage.aspx"); break;
            case "مدیر آشپزخانه": Response.Redirect(@"~/Catering/CateringPage.aspx"); break;
            case "مدیر انبار": Response.Redirect(@"~/Warehouse/WareHouse.aspx"); break;
            default: System.Windows.Forms.MessageBox.Show("عضویت کاربر هنوز تایید نگردیده است"); 
                Response.Redirect(@"~/Default.aspx"); break;
        } 
    }
}