using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Costumer_NewBillReportForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Redirector("مشتری");
        string  reserveId = Session["ReserveId"].ToString();
        decimal priceOfReservedNewFood =
            decimal.Parse(Session["foodOrderfullPrice"].ToString());
        BillAndPayment bapObject = new BillAndPayment().retriveBillInformationByReseveId(reserveId);
        biilUpdatere1.BapObject = bapObject;
        biilUpdatere1.FoodChargeNew = priceOfReservedNewFood;

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