using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ReportPendingReserveInfo : System.Web.UI.Page
{
    ReservationAndCancelation racObject = new ReservationAndCancelation();
    protected void Page_Load(object sender, EventArgs e)
    {
        BillAndPayment bapObject = new BillAndPayment();
        string statusOfReserve = Request.QueryString["StatusOfReserve"];
        ReservationAndCancelation reseAndCancObj = new ReservationAndCancelation();
        List<ReservationTable> reservationObj = racObject.showPendingReserveInformation(statusOfReserve);
        if (reservationObj.Count != 0)
        {
            int numberOfDelet = 0;
            for (int count = 0; count < reservationObj.Count; count++)
            {
                reseAndCancObj = reseAndCancObj.reserveAndCancelationObjectMaker(
                    reservationObj[count]);
                //اگر فاکتور صادر شده بود ، آنگاه اطلاعات رزرو به نمایش در می آید .
                if (bapObject.hasBill(reseAndCancObj.ReservationId))
                {
                    Controls_briefReserveInfo brifReservationInfoControlObj =
                        (Controls_briefReserveInfo)LoadControl(@"~/Controls/briefReserveInfo.ascx");
                    brifReservationInfoControlObj.ReserveAndCancelObj = reseAndCancObj;
                    brifReservationInfoControlObj.NumberOfReserve = count + 1;
                    Panel2.Controls.Add(brifReservationInfoControlObj);
                }
                else if (reseAndCancObj.SubmitDate.AddDays(10) < DateTime.Now
                    && !bapObject.hasBill(reseAndCancObj.ReservationId))
                {
                    reseAndCancObj.cancelReserve(reseAndCancObj.ReservationId);
                    numberOfDelet++;
                }

                if (numberOfDelet != 0)
                {
                    System.Windows.Forms.MessageBox.Show("تعداد " + "" + numberOfDelet + "سفارش ، حذف گردید");
                }
            }
        }
    }
}