using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BrifShowReservesInformation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BillAndPayment bAPObject = new BillAndPayment();
        Members validMember = (Members) Session["ValidUser"];
        string emailAddress = validMember.email;
        ReservationAndCancelation reseAndCancObj = new ReservationAndCancelation();
        List<ReservationTable> reservationObj = reseAndCancObj.showAllReserveInfoByEmail(emailAddress,"انصرافی");
        if (reservationObj.Count != 0)
        {

            for (int count = 0; count < reservationObj.Count; count++)
            {

                reseAndCancObj = reseAndCancObj.reserveAndCancelationObjectMaker(
                    reservationObj[count]);
                Controls_brifReserveInfoForUser brifReservationInfoControlForUserObj =
                    (Controls_brifReserveInfoForUser)LoadControl(@"~/Controls/brifReserveInfoForUser.ascx");
                brifReservationInfoControlForUserObj.DeletView = true;
                if (!bAPObject.hasBill(reseAndCancObj.ReservationId))
                {
                    brifReservationInfoControlForUserObj.MakeBill = true;
                }
                brifReservationInfoControlForUserObj.ReserveAndCancelObj = reseAndCancObj;
                brifReservationInfoControlForUserObj.NumberOfReserve = count + 1;
                Panel2.Controls.Add(brifReservationInfoControlForUserObj);
            }
        }
        else StatusLabel.Visible = true;
        

    }
}