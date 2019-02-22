using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Warehouse_MessageForWareHouse : System.Web.UI.Page
{
    string roleType;
    protected void Page_Load(object sender, EventArgs e)
    {
        roleType = Session["UserRoleType"].ToString();
        ReciveAndReplyEmailControl1.RoleType = roleType;
    }
}