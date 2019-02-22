using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_brifReserveInfoForUser : System.Web.UI.UserControl
{
    ReservationAndCancelation reserveAndCancelObj;
    DataBaseConnection db = new DataBaseConnection();
    int numberOfReserve;

    public int NumberOfReserve
    {
        get { return numberOfReserve; }
        set { numberOfReserve = value; }
    }
    private bool deletView = false;

    public bool DeletView
    {
        get { return deletView; }
        set { deletView = value; }
    }
    private bool makeBill = false;

    public bool MakeBill
    {
        get { return makeBill; }
        set { makeBill = value; }
    }



    public ReservationAndCancelation ReserveAndCancelObj
    {
        get { return reserveAndCancelObj; }
        set { reserveAndCancelObj = value; }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        ImageButton1.Visible = deletView;
        ImageButton2.Visible = makeBill;
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

            reserveIdHypeLi.NavigateUrl = @"~/Costumer/CompleteShowReserveInformationForUser.aspx?ReserveId=" +
                reserveAndCancelObj.ReservationId;
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        string message = null;
        DataBaseConnection db = new DataBaseConnection();
        if (System.Windows.Forms.MessageBox.Show(" آیا  " + numberOfReserveLb.Text + " لغو گردد؟ ", "پیام سیستم",
            System.Windows.Forms.MessageBoxButtons.YesNo) == System.Windows.Forms.DialogResult.Yes)
        {
            //message = reserveAndCancelObj.cancelReserve(reserveAndCancelObj.ReservationId);
            int messageNumber = reserveAndCancelObj.changeReserveStatus(
                reserveAndCancelObj.ReservationId, "انصرافی");
            switch (messageNumber)
            {
                case 1: message = "سفارش با موفقیت لغو گردید"; break;
                case 0: message = "خطا در هنگام لفو سفارش"; break;
            }


            System.Windows.Forms.MessageBox.Show(message);
        }

        Response.Redirect(@"~/Costumer/BrifShowReservesInformation.aspx");

    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        HttpContext.Current.Session.Add("ReserveId", reserveAndCancelObj.ReservationId);
        Response.Redirect("~/Costumer/FinalBill.aspx");
    }
}
