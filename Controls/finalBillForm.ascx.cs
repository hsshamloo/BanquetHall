using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_finalBillForm : System.Web.UI.UserControl
{
    private DataBaseConnection dbObject = new DataBaseConnection();

    private ReceptionHalls rhObject;
    private Members memberInfo;

    public Members MemberInfo
    {
        get { return memberInfo; }
        set { memberInfo = value; }
    }

    private ReservationAndCancelation reserveInfo;

    public ReservationAndCancelation ReserveInfo
    {
        get { return reserveInfo; }
        set { reserveInfo = value; }
    }

    private FoodOrders foodOrderInfo;

    public FoodOrders FoodOrderInfo
    {
        get { return foodOrderInfo; }
        set { foodOrderInfo = value; }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            MultiView1.ActiveViewIndex = RadioButtonList1.SelectedIndex;
        }
        try
        {

            //با استفاده از این آبجکت ، اطلاعات مربوط به غذا های مربوط به سفارش ، بدست می آید
            rhObject = new ReceptionHalls().retriveHallInformaion(reserveInfo.ReHallId);
            foodOrderInfo = new FoodOrders();

            //هزینه کل محاسبه می گردد
            decimal totalCost = reserveInfo.PriceOfReserve + foodOrderInfo.fullPriceOfReserve(reserveInfo.ReservationId);


            costumerNameLb.Text = reserveInfo.CostumerName;
            billDateLb.Text = dbObject.toPersianDate(DateTime.Now);
            hallNameLb.Text = rhObject.HallName;
            reserveDateLb.Text = dbObject.toPersianDate(reserveInfo.ReserveDate);
            hallChargeLb.Text = ((int)reserveInfo.PriceOfReserve).ToString();
            foodChargeLb.Text = ((int)foodOrderInfo.fullPriceOfReserve(reserveInfo.ReservationId)).ToString();
            totalChargeLb.Text = ((int)(reserveInfo.PriceOfReserve + foodOrderInfo.fullPriceOfReserve(reserveInfo.ReservationId))).ToString();

            //بیست درصد از هزینه رزرو تالار ، محاسبه می گردد ،
            //و به عنوان حداقل مقدار پرداخت نمایش داده می شود

            int costToPay = (int)reserveInfo.PriceOfReserve;
            costToPayTxt.Text = (costToPay * 0.2).ToString();
            MultiView1.ActiveViewIndex = 0;
        }
        catch (Exception x)
        {
            System.Windows.Forms.MessageBox.Show("خطا در سیستم" + x.Message);
        }

    }
    protected void payBtn_Click(object sender, ImageClickEventArgs e)
    {
        if (codeToPay.Text.Equals(reserveInfo.Email)
            || ceckCode.Text.Equals(reserveInfo.Email)
            )
        {
            BillAndPayment bap = new BillAndPayment();
            BillAndPayment bapObjcet = new BillAndPayment();

            bapObjcet.ReservationId = reserveInfo.ReservationId;
            bapObjcet.BillDate = DateTime.Now;
            bapObjcet.FoodCharge =
                (decimal)foodOrderInfo.fullPriceOfReserve(reserveInfo.ReservationId);
            bapObjcet.ReserveCharge =
                (decimal)reserveInfo.PriceOfReserve;
            bapObjcet.ServiceCharge = bapObjcet.ReserveCharge * (5 / 100);

            switch (RadioButtonList1.SelectedValue)
            {
                case "نقدی":
                    bapObjcet.AmountPaid = decimal.Parse(costToPayTxt.Text.ToString());
                    break;
                case "چک": bapObjcet.AmountPaid = decimal.Parse(TextBox1.Text.ToString());
                    break;
            }
            bapObjcet.Email = reserveInfo.Email;
            bapObjcet.PayType = RadioButtonList1.SelectedValue;
            int message = 0;
            try
            {
                message = bap.makeABill(bapObjcet);
            }
            catch (Exception x)
            {
                System.Windows.Forms.MessageBox.Show("خطا در سیستم" + x.Message, "پیام سیستم");

            }
            switch (message)
            {
                case 0: System.Windows.Forms.MessageBox.Show("پرداخت با بدهکاری انجام شد", "پیام سیستم");
                    Response.Redirect("~/Costumer/UsersPage.aspx");
                    break;
                case 1: System.Windows.Forms.MessageBox.Show("پرداخت به صورت کامل انجام شد", "پیام سیستم");
                    Response.Redirect("~/Costumer/UsersPage.aspx");
                    break;

                case 2: System.Windows.Forms.MessageBox.Show("پرداخت انجام نشد", "پیام سیستم");
                    Response.Redirect("~/Costumer/FinalBill.aspx");
                    break;
                case 3: System.Windows.Forms.MessageBox.Show("خطا در زمان پرداخت", "پیام سیستم");
                    Response.Redirect("~/Costumer/FinalBill.aspx");
                    break;
            }

        }

        else
        {
            System.Windows.Forms.MessageBox.Show(" کد پرداخت(ایمیل) را بدرستی وارد کنید ");
            MultiView1.ActiveViewIndex = RadioButtonList1.SelectedIndex;
        }

    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {

        MultiView1.ActiveViewIndex = RadioButtonList1.SelectedIndex;
    //    switch (RadioButtonList1.SelectedValue)
    //    {
    //        case "نقدی": MultiView1.ActiveViewIndex = 0;
    //            break;
    //        case "چک": MultiView1.ActiveViewIndex = 1;
    //            break;
    //    }
    }
}