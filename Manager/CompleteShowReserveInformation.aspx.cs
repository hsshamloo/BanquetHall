using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_CompleteShowReserveInformation : System.Web.UI.Page
{


    protected void Page_Load(object sender, EventArgs e)
    {
        Members memberInfo = (Members)HttpContext.Current.Session["ValidUser"];
        string reserveId = Request.QueryString["ReserveId"];
        CopmpleteReserveInfo1.ReserveId = reserveId;
        HyperLink1.NavigateUrl = "~/Manager/FinalBillForManager.aspx?reserveId=" + reserveId;
        if (memberInfo.roleType != "مدیر")
        {
            HyperLink1.Visible = false;
        }
    }
}