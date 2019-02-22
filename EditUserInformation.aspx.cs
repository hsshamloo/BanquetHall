using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EditUserInformation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Members memberObj = (Members)HttpContext.Current.Session["ValidUser"];

    
        EditUserInfo1.MemberInfo = memberObj;
    }
}