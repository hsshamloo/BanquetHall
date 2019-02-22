using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ItemInWarehouse
/// </summary>
public class ItemInWarehouse
{
    DataClassesDataContext context = new DataClassesDataContext();

    public ItemInWarehouse()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    private string itemId, itemName, itemType, statusOfItem;

    public string StatusOfItem
    {
        get { return statusOfItem; }
        set { statusOfItem = value; }
    }

    public string ItemId
    {
        get { return itemId; }
        set { itemId = value; }
    }

    public string ItemName
    {
        get { return itemName; }
        set { itemName = value; }
    }

    public string ItemType
    {
        get { return itemType; }
        set { itemType = value; }
    }
    private decimal itemPrice;

    public decimal ItemPrice
    {
        get { return itemPrice; }
        set { itemPrice = value; }
    }
    private int numberOfAvailable;

    public int NumberOfAvailable
    {
        get { return numberOfAvailable; }
        set { numberOfAvailable = value; }
    }
    public int registerNewItem(ItemInWarehouse newItem)
    {
       int statusItem =
            (from item in context.ItemInWareHouseInfoTables
             where item.ItemName == newItem.ItemName
             &&
             item.ItemType == newItem.ItemType
             select item).Count();

        if (statusItem != 0)
        {
            var itemInWareHouse = context.ItemInWareHouseInfoTables.First
                (iiw => iiw.ItemName == newItem.ItemName);
            itemInWareHouse.NumberOfAvailable =
                itemInWareHouse.NumberOfAvailable + newItem.NumberOfAvailable;
            itemInWareHouse.Price = newItem.ItemPrice;
            context.SubmitChanges();
            return statusItem;
        }
        else
        {
            try
            {
                DateTime dd = DateTime.Now;
                string newitemId = "Item" + dd.Year.ToString() + dd.Month.ToString() + dd.Day.ToString() + dd.Minute.ToString() + dd.Second.ToString() +
                    dd.Millisecond.ToString() + dd.Millisecond.ToString();
                ItemInWareHouseInfoTable newItemInWareHouseInfoTableObj = new ItemInWareHouseInfoTable
                {
                    ItemId = newitemId,
                    ItemName = newItem.ItemName,
                    ItemType = newItem.ItemType,
                    Price = newItem.ItemPrice,
                    NumberOfAvailable = newItem.NumberOfAvailable,
                    StatusOfItem = newItem.StatusOfItem,

                };
                context.ItemInWareHouseInfoTables.InsertOnSubmit(newItemInWareHouseInfoTableObj);
                context.SubmitChanges();
                return statusItem += 2;
            }
            catch (Exception)
            {
                return 3;

            }
        }



    }
    public Array retriveItemType()
    {
        Array itemType = (from item in context.ItemInWareHouseInfoTables
                          select item.ItemType).Distinct().ToArray();
        return itemType;
    }


    public List<ItemInWareHouseInfoTable> retriveAllItemInformation()
    {
        List<ItemInWareHouseInfoTable> itemInformations = (from item in context.ItemInWareHouseInfoTables
                                                           select item).ToList<ItemInWareHouseInfoTable>();
        return itemInformations;
    }

    public Array reriveItemInfoWithSameType(string itemType)
    {
        Array itemSameType = (from itemInSame in context.ItemInWareHouseInfoTables
                              where itemInSame.ItemType == itemType
                              select itemInSame.ItemName).Distinct().ToArray();
        return itemSameType;
    }


    public ItemInWarehouse retriveItemInfoByName(string itemName)
    {
        ItemInWarehouse newItemInfo = new ItemInWarehouse();
        var itemInfo = (from item in context.ItemInWareHouseInfoTables
                        where item.ItemName == itemName
                        select item).Distinct();
        foreach (var info in itemInfo)
        {
            newItemInfo.ItemId = info.ItemId;
            newItemInfo.ItemPrice = (int)info.Price;
            newItemInfo.ItemName = info.ItemName;
            newItemInfo.ItemType = info.ItemType;
        }
        return newItemInfo;
    }
    public int numberOfItemNeedToBuy(string Status)
    {
        int num = (context.ItemInWareHouseInfoTables.Where(iiw => iiw.StatusOfItem
            == Status)).Count();
        return num;
    }
    public string buyAcepance(string oldStatus , string newStatus)
    {
        try
        {
            var itemNeedToBuy = (from x in context.ItemInWareHouseInfoTables
                                 where x.StatusOfItem == oldStatus
                                 select x).ToList();
            //var itemNeedToChangeStatus = context.ItemInWareHouseInfoTables(

            foreach (var item in itemNeedToBuy)
            {
                item.StatusOfItem = newStatus;
            }
            context.SubmitChanges();
            return "انجام شد";
        }
        catch (Exception)
        {

            return "خطا در ایجاد لیست خرید";
        } 
    }
}