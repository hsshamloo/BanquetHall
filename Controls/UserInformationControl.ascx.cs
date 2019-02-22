using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_UserInformationControl : System.Web.UI.UserControl
{
    private Members memberInfo;

    public Members MemberInfo
    {
        get { return memberInfo; }
        set { memberInfo = value; }
    }


    protected void Page_Load(object sender, EventArgs e)
    {
        if (memberInfo != null)
        {

            fNameLb.Text = memberInfo.fName;
            lNameLb.Text = memberInfo.lName;
            switch (memberInfo.gender)
            {
                case "خانم": GenderLb.Text = "مونث"; break;
                case "آقای": GenderLb.Text = "مذکر"; break;
            }
            emailLb.Text = memberInfo.email;
            TelephoneLb.Text = memberInfo.telphoneNumber;
            CountryLb.Text = memberInfo.country;
            ProvinceLb.Text = memberInfo.province;
            CityLb.Text = memberInfo.city;
            AddressTextBox.Text = memberInfo.address;

        }
    }
}