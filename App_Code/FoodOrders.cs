using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for FoodOrders
/// </summary>
public class FoodOrders
{
    DataClassesDataContext context = new DataClassesDataContext();
    public FoodOrders()
    {

    }

    private string foodOrderId, email, foodId, reservationId, foodName, statusOfOrder;

    public string StatusOfOrder
    {
        get { return statusOfOrder; }
        set { statusOfOrder = value; }
    }

    public string FoodName
    {
        get { return foodName; }
        set { foodName = value; }
    }

    public string FoodOrderId
    {
        get { return foodOrderId; }
        set { foodOrderId = value; }
    }

    public string Email
    {
        get { return email; }
        set { email = value; }
    }

    public string FoodId
    {
        get { return foodId; }
        set { foodId = value; }
    }

    public string ReservationId
    {
        get { return reservationId; }
        set { reservationId = value; }
    }
    private int count;

    public int Count
    {
        get { return count; }
        set { count = value; }
    }

    private decimal price;

    public decimal Price
    {
        get { return price; }
        set { price = value; }
    }
    private DateTime submitDate;

    public DateTime SubmitDate
    {
        get { return submitDate; }
        set { submitDate = value; }
    }

    public void reserveFood(FoodOrders newOrder)
    {
        int perFoodOrder = (from orderInfo in context.FoodOrderTables
                            where orderInfo.FoodID == newOrder.FoodId
                            && orderInfo.ReservationId == newOrder.ReservationId
                            select orderInfo).Count();


        if (perFoodOrder != 0)
        {
            var updateFoodOrderInfo = context.FoodOrderTables.First(
                fot => fot.FoodID == newOrder.FoodId && fot.ReservationId == newOrder.ReservationId);

            updateFoodOrderInfo.Count =
                updateFoodOrderInfo.Count + newOrder.Count;
            context.SubmitChanges();
        }
        else
        {
            try
            {
                DateTime dd = DateTime.Now;
                string foodOrderID = "FoOr" + dd.Year.ToString() +
                    dd.Month.ToString() + dd.Day.ToString() + dd.Minute.ToString()
                    + dd.Second.ToString() +
                    dd.Millisecond.ToString() + dd.Millisecond.ToString();


                FoodOrderTable fotObject = new FoodOrderTable()
                {
                    FoodOrderID = foodOrderID,
                    Count = newOrder.Count,
                    Email = newOrder.Email,
                    FoodID = newOrder.FoodId,
                    Price = newOrder.Price,
                    ReservationId = newOrder.ReservationId,
                    SubmitDate = newOrder.SubmitDate,
                    FoodName = newOrder.FoodName,
                    StatusOfOrder = newOrder.StatusOfOrder
                };
                context.FoodOrderTables.InsertOnSubmit(fotObject);
                context.SubmitChanges();
            }
            catch (Exception x)
            {

                System.Windows.Forms.MessageBox.
                    Show("خطا در هنگام ثبت سفارش غذا" + x.Message, "پیام سیستم");
            }
        }

    }
    public decimal fullPriceOfReserve(string reserveId)
    {
        var summarizeFoodOrder = from orderePlaced in context.FoodOrderTables
                                 where orderePlaced.ReservationId == reserveId
                                 select orderePlaced;
        decimal totalPrice = 0;
        foreach (var y in summarizeFoodOrder)
        {
            totalPrice =
                totalPrice + (decimal)y.Price;
        }


        return totalPrice;
    }

    public string changeFoodOrderStatus(string reservId, string newStatus)
    {
        try
        {
            var foodOrderInfo = context.FoodOrderTables.Where(foi => foi.ReservationId
                == reservId);
            foreach (var info in foodOrderInfo)
            {
                info.StatusOfOrder = newStatus;
            }
            context.SubmitChanges();
            return "تایید آشپزخانه شد";
        }
        catch (Exception x)
        {

            return "اشکال در تایید آشپزخانه " + x.Message;
        }
    }
    public bool hassFoodOrder(string reserveId)
    {
        int numberOfFoodOrder = context.FoodOrderTables.Count(
            fot => fot.ReservationId == reserveId);
        if (numberOfFoodOrder != 0)
            return true;
        else
            return false;

    }

    public int numberOfResereveHasFoodOrder
        (string statusOfReserve, string statusOfFoodOrder)
    {
        int countOfNewFoodOrder = 0;
        int countNumberOfNewReserve = 0;

        var newReserve = from order in context.ReservationTables
                         where order.StatusOfReserve == statusOfReserve
                         select order;

        foreach (var info in newReserve)
        {
            if (hassFoodOrder(info.ReservationId))
            {
                 countNumberOfNewReserve =
            ((from order in context.FoodOrderTables
              where order.StatusOfOrder == statusOfFoodOrder
              select order.ReservationId).Distinct()).Count();

                if (countNumberOfNewReserve != 0)
                    countOfNewFoodOrder++;
            }
        }
        return countOfNewFoodOrder ;
    }

}