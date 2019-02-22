using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BanquetMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (HttpContext.Current.Session["ValidUser"] != null)
        {
            Panel1.Controls.Clear();
            Panel2.Controls.Clear();
            Members ValidMember = (Members)Session["ValidUser"];
            //UserPanelControl userPanelObject = (UserPanelControl)LoadControl(@"~/Controls/UserPanelControl.ascx");
            Control newcontrol = LoadControl("~/Controls/UserPanelControl.ascx");
            UserPanelControl userPanelObject = (UserPanelControl)newcontrol;
            
            
            userPanelObject.assignInformation(ValidMember);
            Panel1.Controls.Add(userPanelObject);
        }
    }
}
