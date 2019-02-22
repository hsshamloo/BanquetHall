using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WareHouse : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Redirector("مدیر انبار");
        int numberOfItemNeedToBuy = new ItemInWarehouse().numberOfItemNeedToBuy("مورد نیاز");
        NumHL.Text = numberOfItemNeedToBuy.ToString();


    }
    private void Redirector(string UserType)
    {
        if (Session["ValidUser"] == null)
        {
            Response.Redirect("~/RegisterNewUser.aspx");
        }
        else
        {
            if (Session["UserRoleType"].ToString() != UserType)
            {
                Response.Redirect("~/Default.aspx");
            }
        }
    }
}