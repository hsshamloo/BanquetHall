using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_briefReserveInfo : System.Web.UI.UserControl
{
    ReservationAndCancelation reserveAndCancelObj;
    DataBaseConnection db = new DataBaseConnection();
    int numberOfReserve;

    public int NumberOfReserve
    {
        get { return numberOfReserve; }
        set { numberOfReserve = value; }
    }

    public ReservationAndCancelation ReserveAndCancelObj
    {
        get { return reserveAndCancelObj; }
        set { reserveAndCancelObj = value; }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (reserveAndCancelObj != null)
        {
            numberOfReserveLb.Text = numberOfReserve.ToString() + "-" + "رزرو شماره ";
            UserMemberNameLb.Text = reserveAndCancelObj.CostumerName;
            NumberOfGuestLb.Text = reserveAndCancelObj.NumberOfGuest.ToString();
            reserveDateLb.Text = db.toPersianDate(reserveAndCancelObj.ReserveDate);
            submitDateLb.Text = db.toPersianDate(reserveAndCancelObj.SubmitDate);
            hallIdLb.Text = reserveAndCancelObj.ReHallId;
            reserveIdHypeLi.Text = reserveAndCancelObj.ReservationId;
            statusOfReserveLb.Text = reserveAndCancelObj.StatusOfReserve;
            reserveIdHypeLi.NavigateUrl = @"~/Manager/CompleteShowReserveInformation.aspx?ReserveId=" +
                reserveAndCancelObj.ReservationId;
        }
    }
    //protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    //{
    //    string message = null;
    //    DataBaseConnection db = new DataBaseConnection();
    //    if (System.Windows.Forms.MessageBox.Show(" آیا  " + numberOfReserveLb.Text + " حذف گردد؟ ", "پیام سیستم",
    //        System.Windows.Forms.MessageBoxButtons.YesNo) == System.Windows.Forms.DialogResult.Yes)
    //    {
    //        message = reserveAndCancelObj.cancelReserve(reserveAndCancelObj.ReservationId);
    //        System.Windows.Forms.MessageBox.Show(message);
    //    }

    //    Response.Redirect(@"~/Manager/CompleteShowReserveInformation.aspx");
    //}

}
