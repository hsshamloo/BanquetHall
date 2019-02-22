using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_BillReportForm : System.Web.UI.UserControl
{

    DataBaseConnection db = new DataBaseConnection();
    private BillAndPayment billAndPaymentObject;

    public BillAndPayment BillAndPaymentObject
    {
        get { return billAndPaymentObject; }
        set { billAndPaymentObject = value; }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        
        biilIdLb.Text = billAndPaymentObject.BillId;
        billStatusLb.Text = billAndPaymentObject.BillId;
        submitDateBillLb.Text = db.toPersianDate(
        billAndPaymentObject.BillDate);
        costumerNameLb.Text =
            new Members().memberNameByEmail(
            billAndPaymentObject.Email);
        hallChargeLb.Text = ((int)billAndPaymentObject.ReserveCharge).ToString();
        foodChargeLb.Text = ((int)billAndPaymentObject.FoodCharge).ToString();
        totalPriceLb.Text = ((int)billAndPaymentObject.TotalCharge).ToString();
        amountPaidLb.Text = ((int)billAndPaymentObject.AmountPaid).ToString();
        remainedAmountLb.Text = ((int)billAndPaymentObject.RemindedPaid).ToString();
        billStatusLb.Text = billAndPaymentObject.StatusOfBill;
        payTypeLb.Text = billAndPaymentObject.PayType;
       
        Members memberInfo = (Members)HttpContext.Current.Session["ValidUser"];
        if (memberInfo.roleType == "مدیر" && billAndPaymentObject != null)
        {
            if (new ReservationAndCancelation().
                checkStatus("انجام شده", billAndPaymentObject.ReservationId))
            {
                MultiView1.Visible = false;
                choseOpration.Visible = false;
                //RadioButtonList1.Visible = false;
            }

            if (new ReservationAndCancelation().
                 checkStatus("تایید مدیریت", billAndPaymentObject.ReservationId))
            {
                if (billAndPaymentObject.StatusOfBill == "بدون بدهکاری")
                {
                    //RadioButtonList1.Visible = false;
                    MultiView1.Visible = true;
                    MultiView1.ActiveViewIndex = 2;
                     }
                else
                {
                    MultiView1.Visible = true;
                    finalPayTxt.Text = ((int)billAndPaymentObject.RemindedPaid).ToString();
                    MultiView1.ActiveViewIndex = 0;
                }

            }
            else
            {
                MultiView1.Visible = true;
                MultiView1.ActiveViewIndex = 1;
                //choseOpration.Visible = true;
                RadioButtonList1.Visible = true;
            }

        }
        else
        {
            choseOpration.Visible = false;
            //RadioButtonList1.Visible = false;
            MultiView1.Visible = false;
        }



    }
    protected void acceptBtn_Click(object sender, EventArgs e)
    {
        billAndPaymentObject.AmountPaid =
            billAndPaymentObject.AmountPaid +
            decimal.Parse(finalPayTxt.Text);
        billAndPaymentObject.RemindedPaid = 0;
        billAndPaymentObject.acceptBill(billAndPaymentObject, "انجام شده");
        System.Windows.Forms.MessageBox.Show("پرداخت سفارش انجام شد", "پیام سیستم");
        Response.Redirect("~/Manager/ManagerPage.aspx");
    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = RadioButtonList1.SelectedIndex;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int message = new ReservationAndCancelation().
            changeReserveStatus(billAndPaymentObject.ReservationId,
            "تایید مدیریت");
        switch (message)
        {
            case 1: System.Windows.Forms.MessageBox.Show("سفارش تایید شد", "پیام سیستم");
                ; break;
            case 0: System.Windows.Forms.MessageBox.Show("خطا در هنگام تایید سفارش", "پیام سیستم");
                ; break;
        }
        Response.Redirect("~/Manager/ManagerPage.aspx");

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        int message = new ReservationAndCancelation().
            changeReserveStatus(billAndPaymentObject.ReservationId,
            "انجام شده");
        switch (message)
        {
            case 1: System.Windows.Forms.MessageBox.Show("سفارش تایید شد", "پیام سیستم");
                ; break;
            case 0: System.Windows.Forms.MessageBox.Show("خطا در هنگام تایید سفارش", "پیام سیستم");
                ; break;
        }
        Response.Redirect("~/Manager/ManagerPage.aspx");
    }
}