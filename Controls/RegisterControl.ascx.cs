using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RegisterControl : System.Web.UI.UserControl
{
    Members newMember = new Members();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            newMember.fName = FnameTxt.Text;
            newMember.lName = lNameTxt.Text;
            newMember.password = passWordTxt.Text;
            newMember.gender = genderSelect.SelectedValue;
            newMember.email = EmailTxt.Text;
            newMember.telphoneNumber = telTxt.Text;
            newMember.country = countryTxt.Text;
            newMember.province = provinceTxt.Text;
            newMember.city = cityTxt.Text;
            newMember.address = Address.Text;
            newMember.RegisterDate = DateTime.Now;
            newMember.roleType = "UnValid";
            RegisterAnLogIn registerNewUser = new RegisterAnLogIn();
            
            HttpContext.Current.Session.Add("registerNewUser", registerNewUser.registerUser(newMember));
            
           }
        catch (Exception x)
        {

            HttpContext.Current.Session.Add("registerNewUser", x.Message);
        }
        finally{
            Response.Redirect("~/RegisterNewUser.aspx");
        }
        

    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/RegisterNewUser.aspx");
    }
}