using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Collections;
using System.Data.SqlClient;
using System.Data.Linq;
using System.Linq.Expressions;
using System.ComponentModel;
using System.Globalization;
/// <summary>
/// Summary description for DataBaseConnection
/// </summary>
public class DataBaseConnection
{
    DataClassesDataContext context = new DataClassesDataContext();
    ReceptionHalls hallInfoForRetriving;
    public DataBaseConnection()
    {

    }


    public int NumberOfAvailablePhoto(string hallId)
    {
        var numberOfPic = (from imageFile in context.ImagesTables
                           where imageFile.ObjectID == hallId
                           select imageFile).Count<ImagesTable>();
        return numberOfPic;
    }

    public ReceptionHalls retriveHallInformaion(string hallId)
    {
        hallInfoForRetriving = new ReceptionHalls();
        var hallInformaion = from hall in context.ReceptionsHallTables
                             where hall.ReHallId1 == hallId
                             select hall;
        foreach (var hall in hallInformaion)
        {
            hallInfoForRetriving.HallId = hall.ReHallId1;
            hallInfoForRetriving.HallName = hall.ReHallName;
            hallInfoForRetriving.HallType = hall.ReHallType;
            hallInfoForRetriving.Capacity= hall.ReHallCapacity;
            hallInfoForRetriving.PricePerPerson= hall.ReHallCostPerPerson;
            hallInfoForRetriving.FullPrice = (decimal) hall.ReHallCostFullCapacity;
            hallInfoForRetriving.HallDescription = hall.FullDescription;
        }

        return hallInfoForRetriving;
    }
    public string HallUpdateInfo(ReceptionHalls newInfoOfHall ,string hallToUpdateId)
    {
        try
        {
            ReceptionsHallTable hallForUpdateInfo = context.ReceptionsHallTables.First<ReceptionsHallTable>
                        (hall => hall.ReHallId1.Equals(hallToUpdateId));
            //hallForUpdateInfo.ReHallId1 = hallToUpdateId;
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

            return "خطا در هنگام ثبت اطلاعات"+ x.Message;
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

    public string toPersianDate(DateTime englishDateTime)
    {
        if (englishDateTime.ToShortDateString() == "1/1/0001")
        {
            englishDateTime = DateTime.MaxValue;
        }

        PersianCalendar pc = new PersianCalendar();
        int year = pc.GetYear(englishDateTime);
        int month = pc.GetMonth(englishDateTime);
        int day = pc.GetDayOfMonth(englishDateTime);

        string persianDate = year + "/" + month + "/" + day;
        return persianDate;

    }
        
}
