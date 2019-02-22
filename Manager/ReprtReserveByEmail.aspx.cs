using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ReprtReserveByEmail : System.Web.UI.Page
{
    ReservationAndCancelation racObject = new ReservationAndCancelation();
    protected void Page_Load(object sender, EventArgs e)
    {
        Redirector("مدیر");

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ReservationAndCancelation reseAndCancObj = new ReservationAndCancelation();
        List<ReservationTable> reservationObj = racObject.showAllReserveInfoByEmail(memberEmail.Text,"انصرافی");
        if (reservationObj.Count != 0)
        {
            for (int count = 0; count < reservationObj.Count; count++)
            {
                reseAndCancObj = reseAndCancObj.reserveAndCancelationObjectMaker(
                    reservationObj[count]);
                Controls_briefReserveInfo brifReservationInfoControlObj =
                    (Controls_briefReserveInfo)LoadControl(@"~/Controls/briefReserveInfo.ascx");
                brifReservationInfoControlObj.ReserveAndCancelObj = reseAndCancObj;
                brifReservationInfoControlObj.NumberOfReserve = count + 1;
                Panel2.Controls.Add(brifReservationInfoControlObj);
            }
        }
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