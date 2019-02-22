using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FinalBill : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string reserveId = Session["ReserveId"].ToString();
        ReservationAndCancelation racObject =
            new ReservationAndCancelation().rertriveReserveInformation(reserveId);
        finalBillForm1.ReserveInfo = racObject;

    }
}