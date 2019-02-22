using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Collections;

/// <summary>
/// Summary description for BillAndPayment
/// </summary>
public class BillAndPayment
{
    DataClassesDataContext context = new DataClassesDataContext();
    private string billId, statusOfBill, reservationId, email, payType;

    public string PayType
    {
        get { return payType; }
        set { payType = value; }
    }

    public string Email
    {
        get { return email; }
        set { email = value; }
    }

    public string BillId
    {
        get { return billId; }
        set { billId = value; }
    }

    public string StatusOfBill
    {
        get { return statusOfBill; }
        set { statusOfBill = value; }
    }

    public string ReservationId
    {
        get { return reservationId; }
        set { reservationId = value; }
    }

    private decimal reserveCharge, foodCharge, serviceCharge, amountPaid, remindedPaid, totalCharge;

    public decimal TotalCharge
    {
        get { return totalCharge; }
        set { totalCharge = value; }
    }

    public decimal ReserveCharge
    {
        get { return reserveCharge; }
        set { reserveCharge = value; }
    }

    public decimal FoodCharge
    {
        get { return foodCharge; }
        set { foodCharge = value; }
    }

    public decimal ServiceCharge
    {
        get { return serviceCharge; }
        set { serviceCharge = value; }
    }

    public decimal AmountPaid
    {
        get { return amountPaid; }
        set { amountPaid = value; }
    }

    public decimal RemindedPaid
    {
        get { return remindedPaid; }
        set { remindedPaid = value; }
    }

    private DateTime billDate, clearanceDate;

    public DateTime BillDate
    {
        get { return billDate; }
        set { billDate = value; }
    }

    public DateTime ClearanceDate
    {
        get { return clearanceDate; }
        set { clearanceDate = value; }
    }
    public BillAndPayment()
    {

    }

    public int updateBill(BillAndPayment bapObject)
    {
        int numberOfAvailable = (from bill in context.BillTables
                                 where bill.BillId == bapObject.BillId
                                 select bill).Count();
        if (numberOfAvailable != 0)
        {
            var biilToUpdate = context.BillTables.First(bto => bto.BillId == bapObject.BillId);
            biilToUpdate.ReserveCharge = bapObject.ReserveCharge;
            biilToUpdate.FoodCharge = bapObject.FoodCharge;
            biilToUpdate.ServiceCharge = bapObject.ServiceCharge;
            biilToUpdate.TotalCharge = bapObject.TotalCharge;
            biilToUpdate.RemainedAmount = bapObject.RemindedPaid;
            biilToUpdate.AmountPaid = bapObject.AmountPaid;
            biilToUpdate.StatusOfBill = bapObject.StatusOfBill;
            context.SubmitChanges();
            return 1;

        }
        else return 0;

    }
    public int makeABill(BillAndPayment bapObjcet)
    {
        int numberOfAvailable = (from bill in context.BillTables
                                 where bill.ReservationId == bapObjcet.ReservationId
                                 select bill).Count();

        int peymentStatusId = 0;
        decimal totalChargeForNewBill = bapObjcet.FoodCharge
            + bapObjcet.ReserveCharge;
        decimal amountOfReminded = totalChargeForNewBill -
            bapObjcet.AmountPaid;
        string billStatus = null;
        DateTime cleareDate = DateTime.MaxValue;

        if ((int)amountOfReminded > 0)
        {
            billStatus = "بدهکار";
        }
        else if ((int)amountOfReminded < 0)
        {
            billStatus = "بستانکار";
            cleareDate = DateTime.Now;
            peymentStatusId++;
        }
        else
        {
            billStatus = "بدون بدهکاری";
            cleareDate = DateTime.Now;
            peymentStatusId++;
        }

        if (numberOfAvailable == 0)
        {
            try
            {
                DateTime dd = DateTime.Now;
                string billID = "Bill" + dd.Year.ToString() + dd.Month.ToString() + dd.Day.ToString() + dd.Minute.ToString() + dd.Second.ToString() +
                             dd.Millisecond.ToString() + dd.Millisecond.ToString();
                BillTable btableObject = new BillTable()
                {
                    BillId = billID,
                    BillDate = bapObjcet.BillDate,
                    FoodCharge = bapObjcet.FoodCharge,
                    ReserveCharge = bapObjcet.reserveCharge,
                    ServiceCharge = bapObjcet.ServiceCharge,
                    TotalCharge = totalChargeForNewBill,
                    AmountPaid = bapObjcet.AmountPaid,
                    RemainedAmount = amountOfReminded,
                    StatusOfBill = billStatus,
                    Email = bapObjcet.Email,
                    ReservationId = bapObjcet.ReservationId,
                    ClearanceDate = cleareDate,
                    PayType = bapObjcet.PayType,
                };
                context.BillTables.InsertOnSubmit(btableObject);
                context.SubmitChanges();
                return peymentStatusId;
            }
            catch (Exception x)
            {
                string b = x.Message;
                return peymentStatusId += 3;
            }
        }
        else
        {
            return peymentStatusId += 2;
        }

    }

    public BillAndPayment retriveBillInformationByReseveId(string reseveIdToReriveInfo)
    {
        try
        {
            var infoOfBill = context.BillTables.First(billInfo => billInfo.ReservationId == reseveIdToReriveInfo);
            BillAndPayment newBillInfo = new BillAndPayment();
            newBillInfo.AmountPaid = infoOfBill.AmountPaid;
            newBillInfo.BillDate = infoOfBill.BillDate;
            newBillInfo.BillId = infoOfBill.BillId;
            newBillInfo.ClearanceDate = infoOfBill.ClearanceDate.Value;
            newBillInfo.Email = infoOfBill.Email;
            newBillInfo.FoodCharge = infoOfBill.FoodCharge;
            newBillInfo.RemindedPaid = infoOfBill.RemainedAmount;
            newBillInfo.ReserveCharge = infoOfBill.ReserveCharge;
            newBillInfo.ReservationId = infoOfBill.ReservationId;
            newBillInfo.ServiceCharge = infoOfBill.ServiceCharge;
            newBillInfo.StatusOfBill = infoOfBill.StatusOfBill;
            newBillInfo.TotalCharge = infoOfBill.TotalCharge;
            newBillInfo.PayType = infoOfBill.PayType;
            return newBillInfo;

        }
        catch (Exception)
        {
            System.Windows.Forms.MessageBox.Show("فاکتور صادر نشده است");
            BillAndPayment newBillInfo = new BillAndPayment();
            return newBillInfo;
        }

    }

    public void acceptBill(BillAndPayment bAPobject, string newStatusOfReserve)
    {
        var billInfo = context.BillTables.First(bto => bto.BillId
            == bAPobject.BillId);
        billInfo.StatusOfBill = "بدون بدهکاری";
        billInfo.AmountPaid = bAPobject.AmountPaid;
        billInfo.RemainedAmount = bAPobject.RemindedPaid;
        var reserveInfo = context.ReservationTables.First(rto => rto.ReservationId
            == bAPobject.ReservationId);
        reserveInfo.StatusOfReserve = newStatusOfReserve;
        context.SubmitChanges();
    }

    public bool hasBill(string reserveId)
    {
        int numberofBill = context.BillTables.Count(bto => bto.ReservationId
            == reserveId);
        if (numberofBill != 0)
        {
            return true;
        }
        else return false;
    }
}