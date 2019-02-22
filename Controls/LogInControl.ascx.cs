using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LogInControl : System.Web.UI.UserControl 
{
    RegisterAnLogIn logInCommand = new RegisterAnLogIn();
    Members ValidUser;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

        int logInMessageFromServer = logInCommand.logInToSystem(UserNameText.Text, PassWordTextBx.Text);

        switch (logInMessageFromServer)
        {
            case 0: Label1.Text = "نام کاربری و کلمه ی عبور نا معتبر است"; break;
            case 1: Label1.Text = "رمز عبور برای این نام کاربری نامعتبر است"; break;
            case 2: retriveUserInfo(); break;
            case 3: Label1.Text = "اشکال در سیستم"; break;
            default: Label1.Text = "اشکال سیستمی"; break;
        }
        

    }

    private void retriveUserInfo()
    {
        ValidUser = logInCommand.retriveUserInformation(UserNameText.Text);
        HttpContext.Current.Session.Add("ValidUser",ValidUser);
        HttpContext.Current.Session.Add("UserRoleType", ValidUser.roleType);
        switch (ValidUser.roleType)
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