using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_EditUserInfo : System.Web.UI.UserControl
{
    
    private Members memberInfo;

    public Members MemberInfo
    {
        get { return memberInfo; }
        set { memberInfo = value; }
    }

    protected void Page_Load(object sender, EventArgs e)
    {

        if (IsPostBack)
        {
            //memberInfo.fName = FnameTxt.Text;
            //memberInfo.lName = lNameTxt.Text;
            //memberInfo.gender = genderSelect.SelectedValue;
            memberInfo.telphoneNumber = telTxt.Text;
            memberInfo.country = countryTxt.Text;
            memberInfo.province = provinceTxt.Text;
            memberInfo.city = cityTxt.Text;
            memberInfo.address = Address.Text;
        }

        //FnameTxt.Text = memberInfo.fName;
        //lNameTxt.Text = memberInfo.lName;
        //genderSelect.SelectedValue = memberInfo.gender;
        telTxt.Text = memberInfo.telphoneNumber;
        countryTxt.Text = memberInfo.country;
        provinceTxt.Text = memberInfo.province;
        cityTxt.Text = memberInfo.city;
        Address.Text = memberInfo.address;

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        int messageCode = memberInfo.updateUserInfo(memberInfo);
        switch (messageCode)
        {
            case 1: System.Windows.Forms.MessageBox.Show("اطلاعات کاربر با موفقیت به روز شد");
                Members memberObj = (Members)HttpContext.Current.Session["ValidUser"];
                switch (memberObj.roleType)
                {
                    case "مشتری": Response.Redirect(@"~/Costumer/UsersPage.aspx"); break;
                    case "مدیر": Response.Redirect(@"~/Manager/ManagerPage.aspx"); break;
                    case "مدیر آشپزخانه": Response.Redirect(@"~/Catering/CateringPage.aspx"); break;
                    case "مدیر انبار": Response.Redirect(@"~/Warehouse/WareHouse.aspx"); break;
                    default: Response.Redirect(@"~/Default.aspx"); break;
                } break;
            case 0: System.Windows.Forms.MessageBox.Show("خطا در سیستم رخ داده است");
                Response.Redirect(@"~/EditUserInformation.aspx");
                break;

        }
    }
}