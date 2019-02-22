using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Manager_UserInformation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string emailOfMember = Request.QueryString["UserEmail"];
        Members memberInfo = new Members().retriveUserInfo(emailOfMember);
        UserInformationControl1.MemberInfo = memberInfo;
    }
}