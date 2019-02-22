using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Foods
/// </summary>
public class Foods
{
    DataClassesDataContext context = new DataClassesDataContext();
    public Foods()
    {

    }
    private string foodId, foodName, foodType;

    public string FoodId
    {
        get { return foodId; }
        set { foodId = value; }
    }

    public string FoodName
    {
        get { return foodName; }
        set { foodName = value; }
    }

    public string FoodType
    {
        get { return foodType; }
        set { foodType = value; }
    }
    private decimal foodPrice;

    public decimal FoodPrice
    {
        get { return foodPrice; }
        set { foodPrice = value; }
    }
public int registerNewFood(Foods newFood)
    {
        int statusFood =
            (from food in context.FoodInfoTables
             where food.FoodName == newFood.FoodName
             &&
             food.FoodType == newFood.FoodType
             &&
             food.Price == newFood.FoodPrice
             select food).Count();

        if (statusFood != 0)
        {
            return statusFood;
        }
        else
        {
            try
            {
                DateTime dd = DateTime.Now;
                string foodId = "Food" + dd.Year.ToString() + dd.Month.ToString() + dd.Day.ToString() + dd.Minute.ToString() + dd.Second.ToString() +
                    dd.Millisecond.ToString() + dd.Millisecond.ToString();
                FoodInfoTable newFoodInfo = new FoodInfoTable
                {
                    FoodName = newFood.FoodName,
                    FoodType = newFood.FoodType,
                    FoodId = foodId,
                    Price = newFood.FoodPrice,
                };
                context.FoodInfoTables.InsertOnSubmit(newFoodInfo);
                context.SubmitChanges();
                return statusFood += 2;
            }
            catch (Exception)
            {
                return 3;

            }
        }



    }
    public Array retriveFoodType()
    {
        Array foodType = (from food in context.FoodInfoTables
                          select food.FoodType).Distinct().ToArray();
        return foodType;
    }
    

    public List<FoodInfoTable> retriveAllFoodInformation()
    {
        List<FoodInfoTable> foodInformations =( from food in context.FoodInfoTables
                                               select food).ToList<FoodInfoTable>();
        return foodInformations;
    }

    public Array reriveFoodInfoWithSameType(string foodType)
    {
        Array foodSameType = (from foodInSame in context.FoodInfoTables
                              where foodInSame.FoodType == foodType
                              select foodInSame.FoodName).Distinct().ToArray();
        return foodSameType;
    }
   public Foods retriveFoodInfoByName(string foodName)
    {
        Foods newFoodInfo = new Foods();
        var foodInfo = (from food in context.FoodInfoTables
                        where food.FoodName == foodName
                        select food).Distinct();
        foreach (var info in foodInfo)
        {
            newFoodInfo.FoodId = info.FoodId;
            newFoodInfo.FoodPrice =(int) info.Price;
            newFoodInfo.foodName = info.FoodName;
            newFoodInfo.FoodType = info.FoodType;
        }
        return newFoodInfo;
    }

   public decimal RetriveFoodPrice(string foodNameToRetrivePrice)
   {
       var priceOfFood = context.FoodInfoTables.First(fit => fit.FoodName
           == foodNameToRetrivePrice);
       decimal price = priceOfFood.Price;
       return price;
   }
}