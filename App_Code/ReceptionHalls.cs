using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Drawing;
using System.Data.SqlClient;

/// <summary>
/// Summary description for ReceptionHalls
/// </summary>
public class ReceptionHalls
{
    DataClassesDataContext context = new DataClassesDataContext();
    public ReceptionHalls()
    {
    }

    private string hallId;

    public string HallId
    {
        get { return hallId; }
        set { hallId = value; }
    }
    private string hallName;

    public string HallName
    {
        get { return hallName; }
        set { hallName = value; }
    }
    private string hallDescription;

    public string HallDescription
    {
        get { return hallDescription; }
        set { hallDescription = value; }
    }
    private string hallType;

    public string HallType
    {
        get { return hallType; }
        set { hallType = value; }
    }
    private int capacity;

    public int Capacity
    {
        get { return capacity; }
        set { capacity = value; }
    }
    private decimal pricePerPerson;

    public decimal PricePerPerson
    {
        get { return pricePerPerson; }
        set { pricePerPerson = value; }
    }
    private decimal fullPrice;

    public decimal FullPrice
    {
        get { return fullPrice; }
        set { fullPrice = value; }
    }

    public  ReceptionHalls retriveHallInformaion(string hallId)
    {
        ReceptionHalls hallInfoForRetriving = new ReceptionHalls();
        var hallInformaion = from hall in context.ReceptionsHallTables
                             where hall.ReHallId1 == hallId
                             select hall;
        foreach (var hall in hallInformaion)
        {
            hallInfoForRetriving.HallId = hall.ReHallId1;
            hallInfoForRetriving.HallName = hall.ReHallName;
            hallInfoForRetriving.HallType = hall.ReHallType;
            hallInfoForRetriving.Capacity = hall.ReHallCapacity;
            hallInfoForRetriving.PricePerPerson = hall.ReHallCostPerPerson;
            hallInfoForRetriving.FullPrice = (decimal)hall.ReHallCostFullCapacity;
            hallInfoForRetriving.HallDescription = hall.FullDescription;
        }

        return hallInfoForRetriving;
    }

    
    
    public string retriveHallNameByHallId(string hallIdToRetriveName)
    {
    
        var hallINameToReriveID = context.ReceptionsHallTables.First(res => res.ReHallId1 ==
            hallIdToRetriveName);
        return hallINameToReriveID.ReHallName;
    }
    public string retriveHallIdByName(string hallNameToRetrive)
    {
        var hallIdToRetriveName = context.ReceptionsHallTables.First(res => res.ReHallName==
            hallNameToRetrive);
        return hallIdToRetriveName.ReHallId1;
    }
    public string HallUpdateInfo(ReceptionHalls newInfoOfHall, string hallToUpdateId)
    {
        try
        {
            ReceptionsHallTable hallForUpdateInfo = context.ReceptionsHallTables.First<ReceptionsHallTable>
                        (hall => hall.ReHallId1.Equals(hallToUpdateId));
           
            hallForUpdateInfo.ReHallName = newInfoOfHall.HallName;
            hallForUpdateInfo.ReHallCapacity = newInfoOfHall.Capacity;
            hallForUpdateInfo.ReHallCostPerPerson = (int)newInfoOfHall.PricePerPerson;
            hallForUpdateInfo.ReHallType = newInfoOfHall.HallType;
            hallForUpdateInfo.FullDescription = newInfoOfHall.HallDescription;
            
            context.SubmitChanges();
            return "اطلاعات با موفقیت تغییر پیدا کرد";
        }
        catch (Exception x)
        {

            return "خطا در هنگام ثبت اطلاعات" + x.Message;
        }



    }
    public string deletHall(string hallId)
    {
        try
        {
            ReceptionsHallTable hallForDeletInfo = context.ReceptionsHallTables.First<ReceptionsHallTable>
                        (hall => hall.ReHallId1.Equals(hallId));
            context.ReceptionsHallTables.DeleteOnSubmit(hallForDeletInfo);
            context.SubmitChanges();
            return "تالار با موفقیت حدف گردید";
        }
        catch (Exception x)
        {
            return "خطا در هنگام حذف تالار در" + x.Message;

        }


    }
    public string registerNewHall(ReceptionHalls newHall)
    {
        
        try
        {
            if (((from hall in context.ReceptionsHallTables
                  where hall.ReHallName.Equals(newHall.HallName)
                  select hall).Count<ReceptionsHallTable>()) != 0)
            {
                return "این تالار پیش از این ثبت شده است";

            }
            else
            {
                DateTime dd = DateTime.Now;
                string hallId = "Hall" + dd.Year.ToString() + dd.Month.ToString() + dd.Day.ToString() + dd.Minute.ToString() + dd.Second.ToString() +
                    dd.Millisecond.ToString() + dd.Millisecond.ToString();
                ReceptionsHallTable newHallfoRegister = new ReceptionsHallTable
                {
                    ReHallId1 = hallId,
                    ReHallName = newHall.HallName,
                    ReHallCapacity = newHall.Capacity,
                    ReHallCostPerPerson = (int)(newHall.PricePerPerson),
                    ReHallType = newHall.HallType,
                    FullDescription = newHall.HallDescription,
                };
                context.ReceptionsHallTables.InsertOnSubmit(newHallfoRegister);
                context.SubmitChanges();
                return newHallfoRegister.ReHallId1;
            }


        }
        catch (SqlException x)
        {

            return x.Message + " " + x.Source + " Exeption Error";
        }
    }
    public Array nameOfHall()
    {
        Array nameOfHalls = (from hallinfo in context.ReceptionsHallTables
                             select hallinfo.ReHallName.ToString()).ToArray();
        return nameOfHalls;
    }

}