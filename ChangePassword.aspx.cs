﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ChangePassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Members memberObj = (Members)HttpContext.Current.Session["ValidUser"];

        ChangePassWord1.MemberInfo = memberObj;
    }
}