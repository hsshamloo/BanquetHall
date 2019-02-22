using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ReportAllReserveInformation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HPToPendingReserveInfo.NavigateUrl = "~/Manager/ReportPendingReserveInfo.aspx?StatusOfReserve="+"معلق";

    }
}