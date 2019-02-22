using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for ReservationAndCancelation
/// </summary>
public class ReservationAndCancelation
{
    DataClassesDataContext context = new DataClassesDataContext();
    private string reservationId, reHallId, email, typeOfParty, costumerName, costumerMessage, statusOfReserve;
    private decimal priceOfReserve;

    public decimal PriceOfReserve
    {
        get { return priceOfReserve; }
        set { priceOfReserve = value; }
    }
    public string StatusOfReserve
    {
        get { return statusOfReserve; }
        set { statusOfReserve = value; }
    }

    public string CostumerMessage
    {
        get { return costumerMessage; }
        set { costumerMessage = value; }
    }

    public string CostumerName
    {
        get { return costumerName; }
        set { costumerName = value; }
    }

    public string TypeOfParty
    {
        get { return typeOfParty; }
        set { typeOfParty = value; }
    }

    public string Email
    {
        get { return email; }
        set { email = value; }
    }

    public string ReHallId
    {
        get { return reHallId; }
        set { reHallId = value; }
    }

    public string ReservationId
    {
        get { return reservationId; }
        set { reservationId = value; }
    }

    private int uumberOfGuest;

    public int NumberOfGuest
    {
        get { return uumberOfGuest; }
        set { uumberOfGuest = value; }
    }

    private DateTime reserveDate, submitDate;

    public DateTime SubmitDate
    {
        get { return submitDate; }
        set { submitDate = value; }
    }

    public DateTime ReserveDate
    {
        get { return reserveDate; }
        set { reserveDate = value; }
    }


    public List<ReceptionsHallTable> listOfHalls(DateTime checkDate, int numberOfGuest)
    {
        var reserveInfoObject = from reserveInfo in context.ReservationTables
                                where reserveInfo.ReserveDate == checkDate || reserveInfo.ReserveDate == null
                                 select reserveInfo.ReHallId;
        List<ReceptionsHallTable> hallclasseMaker = (from hallInfo in context.ReceptionsHallTables
                                                     where !reserveInfoObject.Contains(hallInfo.ReHallId1)
                                                     && hallInfo.ReHallCapacity >= numberOfGuest
                                                     select hallInfo).ToList<ReceptionsHallTable>();
        return hallclasseMaker;
    }

    public string reserveHall(ReservationAndCancelation reserveInformation)
    {
        if ((from numberOfSameReserve in context.ReservationTables
             where numberOfSameReserve.ReHallId == reserveInformation.ReHallId
             && numberOfSameReserve.Email == reserveInformation.Email
             && numberOfSameReserve.ReserveDate == reserveInformation.ReserveDate
             select numberOfSameReserve).Count() != 0)
        {
            return "این رزرو با این مشخصات پیش از این صورت گرفته است";
        }
        else
        {
            try
            {

                DateTime dd = DateTime.Now;
                string resId = "Resv" + dd.Year.ToString() + dd.Month.ToString() + dd.Day.ToString() + dd.Minute.ToString() + dd.Second.ToString() +
                    dd.Millisecond.ToString();
                ReservationTable reserveTableObject = new ReservationTable
                {

                    Email = reserveInformation.Email,
                    ReservationId = resId,
                    ReserveDate = reserveInformation.ReserveDate,
                    SubmitDate = reserveInformation.SubmitDate,
                    TypeOfParty = reserveInformation.TypeOfParty,
                    NumberOfGuest = reserveInformation.NumberOfGuest,
                    ReHallId = reserveInformation.ReHallId,
                    CostumerMessage = reserveInformation.CostumerMessage,
                    CostumerName = reserveInformation.CostumerName,
                    StatusOfReserve = reserveInformation.StatusOfReserve,
                    PriceOfReserv = reserveInformation.PriceOfReserve,
                };

                context.ReservationTables.InsertOnSubmit(reserveTableObject);
                context.SubmitChanges();
                return resId;

            }
            catch (Exception x)
            {
                return "خطا در هنگام رزرو صورت گرفته است " + x.Message;
            }
        }


    }

    public ReservationAndCancelation rertriveReserveInformation(string reserveId)
    {
        ReservationTable reserveObject = context.ReservationTables.First<ReservationTable>
                    (res => res.ReservationId.Equals(reserveId));
        ReservationAndCancelation reserveAndCancelObj = new ReservationAndCancelation()
        {
            Email = reserveObject.Email,
            NumberOfGuest = reserveObject.NumberOfGuest,
            ReHallId = reserveObject.ReHallId,
            ReservationId = reserveObject.ReservationId,
            ReserveDate = reserveObject.ReserveDate,
            SubmitDate = reserveObject.SubmitDate,
            TypeOfParty = reserveObject.TypeOfParty,
            CostumerName = reserveObject.CostumerName,
            CostumerMessage = reserveObject.CostumerMessage,
            PriceOfReserve = (decimal)reserveObject.PriceOfReserv,
        };
        return reserveAndCancelObj;

    }

    public List<ReservationTable> showAllReserveInfo()
    {
        List<ReservationTable> allReserveInfo = (from reservePlaced in context.ReservationTables
                                                 select reservePlaced).ToList<ReservationTable>();
        return allReserveInfo;
    }
    public void cancelReserve(string reserveId)
    {
        try
        {
            ReservationTable reserveToDelet = context.ReservationTables.First<ReservationTable>
              (res => res.ReservationId.Equals(reserveId));
            context.ReservationTables.DeleteOnSubmit(reserveToDelet);
            context.SubmitChanges();

        }
        catch (Exception x)
        {


        }


    }
    public decimal RetrivePriceOfReserve(string reserveId)
    {
        var priceOfReserve = context.ReservationTables.First(ret => ret.ReservationId == reserveId);
        decimal priceofReserve = priceOfReserve.PriceOfReserv;
        return priceofReserve;
    }
    public List<ReservationTable> showAllReserveInfoByEmail(string email, string statusOfReserveToRetrive)
    {
        List<ReservationTable> allReserveInfo = (from reservePlaced in context.ReservationTables
                                                 where reservePlaced.Email == email &&
                                                 reservePlaced.StatusOfReserve != statusOfReserveToRetrive
                                                 select reservePlaced).ToList<ReservationTable>();
        return allReserveInfo;
    }

    public List<ReservationTable> showAllReserveInfoByDate(DateTime dateOfCermony)
    {
        List<ReservationTable> allReserveInfo = (from reservePlaced in context.ReservationTables
                                                 where reservePlaced.ReserveDate == dateOfCermony
                                                 select reservePlaced).ToList<ReservationTable>();
        return allReserveInfo;
    }
    public List<ReservationTable> showAllReserveInfoByDateToDate(DateTime firstDate, DateTime secondDate)
    {
        List<ReservationTable> allReserveInfo = (from reservePlaced in context.ReservationTables
                                                 where   firstDate <= reservePlaced.ReserveDate
                                                     && reservePlaced.ReserveDate <= secondDate
                                                 select reservePlaced).ToList<ReservationTable>();
        return allReserveInfo;
    }
    public List<ReservationTable> showFutureReserveInfo(int numberOfDay)
    {
        List<ReservationTable> allReserveInfo = (from reservePlaced in context.ReservationTables
                                                 where reservePlaced.ReserveDate == DateTime.Now ||
                                                 (reservePlaced.ReserveDate > DateTime.Now &&
                                                 reservePlaced.ReserveDate < DateTime.Now.AddDays(numberOfDay))
                                                 select reservePlaced).ToList<ReservationTable>();
        return allReserveInfo;

    }
    public List<ReservationTable> showNewestReservePlaced(int numberOfDay)
    {
        numberOfDay = numberOfDay * (-1);
        List<ReservationTable> allReserveInfo = (from reservePlaced in context.ReservationTables
                                                 where reservePlaced.SubmitDate == DateTime.Now ||
                                                 (reservePlaced.SubmitDate < DateTime.Now &&
                                                 reservePlaced.SubmitDate > DateTime.Now.AddDays(numberOfDay))
                                                 select reservePlaced).ToList<ReservationTable>();
        return allReserveInfo;

    }
    public List<ReservationTable> showAllReserveInfoByHallId(string HallId)
    {
        List<ReservationTable> allReserveInfo = (from reservePlaced in context.ReservationTables
                                                 where reservePlaced.ReHallId == HallId
                                                 select reservePlaced).ToList<ReservationTable>();
        return allReserveInfo;
    }
    public string HallNameByReserveId(string reserveIdToRetrvieName)
    {
        var hallInafo = context.ReservationTables.First(
            res => res.ReservationId == reserveIdToRetrvieName);

        string hallId = hallInafo.ReHallId;

        ReceptionHalls rh = new ReceptionHalls();
        string hallName = rh.retriveHallNameByHallId(hallId);
        return hallName;


    }

    public ReservationAndCancelation reserveAndCancelationObjectMaker(ReservationTable reserve)
    {
        ReservationAndCancelation reseAndCancObj = new ReservationAndCancelation();
        reseAndCancObj.ReservationId = reserve.ReservationId;
        reseAndCancObj.CostumerName = reserve.CostumerName;
        reseAndCancObj.NumberOfGuest = reserve.NumberOfGuest;
        reseAndCancObj.ReserveDate = reserve.ReserveDate;
        reseAndCancObj.ReHallId = reserve.ReHallId;
        reseAndCancObj.SubmitDate = reserve.SubmitDate;
        reseAndCancObj.StatusOfReserve = reserve.StatusOfReserve;
        return reseAndCancObj;
    }
    public int numberOfPendingReseve(string stausOfReserveToRetrive)
    {
        BillAndPayment bapObject = new BillAndPayment();
        var numberOfReservetion = (context.ReservationTables.Where(
            number => number.StatusOfReserve
            == stausOfReserveToRetrive));
        //return numberOfReservetion;
        int count = 0;
        foreach (var x in numberOfReservetion)
        {
            if (bapObject.hasBill(x.ReservationId))
                count++;
        }
        return count;

    }

    public List<ReservationTable> showPendingReserveInformation(string StatusOfReserveToRetrive)
    {
        List<ReservationTable> allReserveInfo = (from reservePlaced in context.ReservationTables
                                                 where reservePlaced.StatusOfReserve == StatusOfReserveToRetrive
                                                 select reservePlaced).ToList<ReservationTable>();
        return allReserveInfo;
    }

    public bool checkStatus(string status, string reserveId)
    {
        try
        {
            var statusCheck = context.ReservationTables.First(res => res.ReservationId
           == reserveId);
            if (statusCheck.StatusOfReserve == status)
                return true;
            else return false;
        }
        catch (Exception)
        {

            return false;
        }

    }
    public bool isReservedHall(string hallId)
    {
        int numberOfReservationOfHall = context.ReservationTables.Count(res => res.ReHallId
            == hallId && res.ReserveDate > DateTime.Now);
        if (numberOfReservationOfHall != 0)
        {
            return true;
        }
        else return false;
    }
    public int changeReserveStatus(string reserveId, string newStatus)
    {
        try
        {
            var reserveInf = context.ReservationTables.First(
              res => res.ReservationId == reserveId);

            reserveInf.StatusOfReserve = newStatus;
            if (newStatus == "انصرافی")
            {
                reserveInf.ReserveDate = DateTime.MaxValue;
            }
            context.SubmitChanges();
            return 1;

        }
        catch (Exception)
        {

            return 0;
        }

    }

}