using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ItemOrder
/// </summary>
public class ItemOrder
{
    DataClassesDataContext context = new DataClassesDataContext();
    public ItemOrder()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    private string itemOrderId, itemId, itemName, statusOfOrder, email;

    public string Email
    {
        get { return email; }
        set { email = value; }
    }

    public string StatusOfOrder
    {
        get { return statusOfOrder; }
        set { statusOfOrder = value; }
    }

    public string ItemName
    {
        get { return itemName; }
        set { itemName = value; }
    }

    public string ItemOrderId
    {
        get { return itemOrderId; }
        set { itemOrderId = value; }
    }

    public string ItemId
    {
        get { return itemId; }
        set { itemId = value; }
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

    public void orderNewItem(ItemOrder newOrder, string statusOfItem)
    {
        try
        {
            DateTime dd = DateTime.Now;
            string itemOrderID = "ItOr" + dd.Year.ToString() +
                dd.Month.ToString() + dd.Day.ToString() + dd.Minute.ToString()
                + dd.Second.ToString() +
                dd.Millisecond.ToString() + dd.Millisecond.ToString();


            ItemOrderInfoTable itemOrderObject = new ItemOrderInfoTable();
            ItemInWarehouse itemInWareHouseObject = new ItemInWarehouse();

            itemOrderObject.ItemOrderID = itemOrderID;
            itemOrderObject.Count = newOrder.Count;
            itemOrderObject.ItemId = newOrder.ItemId;
            itemOrderObject.FullPrice = newOrder.Price;
            itemOrderObject.SubmitDate = newOrder.SubmitDate;
            itemOrderObject.ItemName = newOrder.ItemName;
            itemOrderObject.StatusOfOrder = newOrder.StatusOfOrder;
            itemOrderObject.Email = newOrder.Email;


            var ItemInWareHouseTableObject = context.ItemInWareHouseInfoTables.
                First(iot => iot.ItemId == newOrder.ItemId);
            ItemInWareHouseTableObject.NumberOfAvailable =
                ItemInWareHouseTableObject.NumberOfAvailable - newOrder.Count;

            if (ItemInWareHouseTableObject.NumberOfAvailable <= 10)
            {
                ItemInWareHouseTableObject.StatusOfItem = statusOfItem;
            }

            context.ItemOrderInfoTables.InsertOnSubmit(itemOrderObject);
            context.SubmitChanges();
        }
        catch (Exception x)
        {

            System.Windows.Forms.MessageBox.
                Show("خطا در هنگام ثبت کالا" + x.Message, "پیام سیستم");
        }


    }
    public decimal fullPriceOfOrder()
    {
        var summarizeItemOrder = from orderePlaced in context.ItemOrderInfoTables
                                 where orderePlaced.SubmitDate == DateTime.Now
                                 select orderePlaced;
        decimal totalPrice = 0;
        foreach (var y in summarizeItemOrder)
        {
            totalPrice =
                totalPrice + (decimal)y.FullPrice;
        }


        return totalPrice;
    }

    public List<ItemOrderInfoTable> listOfOrderInSameDate(DateTime dateOfOrder)
    {
        List<ItemOrderInfoTable> orderInfo = (from order in context.ItemOrderInfoTables
                        where order.SubmitDate == dateOfOrder
                        select order).ToList<ItemOrderInfoTable>();
        return orderInfo;



    }
    
    public Array theListOfDateOfOrderInSameStatus(string statusOfOrderToRetrive)
    {
        Array orderInfoSameStatus = (from orderInfo in context.ItemOrderInfoTables
                                     where orderInfo.StatusOfOrder == statusOfOrderToRetrive
                                     select orderInfo.SubmitDate).Distinct().ToArray();

        return orderInfoSameStatus;



    }


}