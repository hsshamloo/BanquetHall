using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ListOfItemNeedToBuyForWarehouse : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Redirector("مدیر انبار");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        string message = new ItemInWarehouse().buyAcepance("تایید خرید", "ثبت توسط انبار");
        System.Windows.Forms.MessageBox.Show(message);
        Response.Redirect("~/Warehouse/WareHouse.aspx");
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