using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_biilUpdatere : System.Web.UI.UserControl
{
    

    private BillAndPayment bapObject;

    public BillAndPayment BapObject
    {
        get { return bapObject; }
        set { bapObject = value; }
    }

    private decimal foodChargeNew;

    public decimal FoodChargeNew
    {
        get { return foodChargeNew; }
        set { foodChargeNew = value; }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (IsPostBack)
        //{
        //    bapObject.FoodCharge = foodChargeNew;
        //    bapObject.TotalCharge = 
        //}
        DataBaseConnection db = new DataBaseConnection();
        string billId = bapObject.BillId;
        string dateOfBill = db.toPersianDate(bapObject.BillDate);
        decimal totalOldCostToPay = bapObject.RemindedPaid;
        decimal foodsChareOldCost = bapObject.FoodCharge;
        string emailOfCostumer = bapObject.Email;
        decimal foodsChargNewCost = foodChargeNew;
        decimal changedOfCost = foodsChareOldCost - foodsChargNewCost;
        decimal newTotalCost = totalOldCostToPay - changedOfCost;

        biilIdLb.Text = billId;
        submitDateBillLb.Text = dateOfBill;
        emailLb.Text = emailOfCostumer;
        totalPriceLb.Text = ((int) totalOldCostToPay).ToString();
        if (changedOfCost < 0)
        {
            changedPricLb.Text =((int) (changedOfCost * -1)).ToString();
        }
        else
            changedPricLb.Text =((int) changedOfCost).ToString();

        remainedAmountLb.Text =((int) newTotalCost).ToString();





    }
    protected void acceptBtn_Click(object sender, EventArgs e)
    {
        BillAndPayment bapObjectToUpdateBill = new BillAndPayment();
        bapObjectToUpdateBill.BillId = bapObject.BillId;
        bapObjectToUpdateBill.FoodCharge = foodChargeNew;

        bapObjectToUpdateBill.ReserveCharge = bapObject.ReserveCharge;
        bapObjectToUpdateBill.ServiceCharge = bapObject.ServiceCharge;
        bapObjectToUpdateBill.PayType = bapObject.PayType;
        bapObjectToUpdateBill.RemindedPaid = bapObject.RemindedPaid;
        bapObjectToUpdateBill.AmountPaid = bapObject.AmountPaid;

        decimal totalcostToUpdate = bapObjectToUpdateBill.FoodCharge +
            bapObjectToUpdateBill.ReserveCharge +
            bapObjectToUpdateBill.ServiceCharge;
        decimal remindedPay = totalcostToUpdate -
            bapObjectToUpdateBill.AmountPaid;

        bapObjectToUpdateBill.TotalCharge = totalcostToUpdate;
        bapObjectToUpdateBill.RemindedPaid = remindedPay;
        bapObjectToUpdateBill.StatusOfBill = bapObject.StatusOfBill;
        int message;
        try 
	{	        
		 message =  bapObjectToUpdateBill.updateBill(bapObjectToUpdateBill);
	}
	catch (Exception x)
	{
        string y = x.Message;
    message = -1;
	}
        switch (message)
        {
            case 1: System.Windows.Forms.MessageBox.Show("فاکتور به روز شد");
                Response.Redirect("~/Costumer/UsersPage.aspx");
                break;
            case 0: System.Windows.Forms.MessageBox.Show("خطا در به روز رسانی فاکتور");
                Response.Redirect("~/Costumer/NewBillReportForm.aspx");
                break;
            default: System.Windows.Forms.MessageBox.Show("خطا سیستمی در به روز رسانی فاکتور");
                Response.Redirect("~/Costumer/NewBillReportForm.aspx");
                break;
        }

    }
}