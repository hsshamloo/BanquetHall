using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_SetDateAndNumberOfG : System.Web.UI.UserControl
{
    ReserveDateAndCapacity rda = new ReserveDateAndCapacity();
    ReservationAndCancelation hallsAvailable = new ReservationAndCancelation();

    private string numberOfGuest = null, persianDate = null;

    public string PersianDate
    {
        get { return persianDate; }
        set { persianDate = value; }
    }

    public string NumberOfGuest
    {
        get { return numberOfGuest; }
        set { numberOfGuest = value; }
    }
    
    protected void Page_Load(object sender, EventArgs e)
    {

        

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        rda.NumberOfGuest = int.Parse(numberOfGuestTxt.Text);
        rda.ReserveDate = DatePicker1.Date.Value;
        rda.PersianDate = DatePicker1.DatePersian;
        if (rda.ReserveDate == DateTime.Now || rda.ReserveDate >= DateTime.Now)
        {
            List<ReceptionsHallTable> hallsInfo = hallsAvailable.listOfHalls(rda.ReserveDate, rda.NumberOfGuest);
            HttpContext.Current.Session.Add("AvailableHallForReserveList", hallsInfo);
            HttpContext.Current.Session.Add("DateAndCapacityOfReseve", rda);
            if (hallsInfo.Count == 0)
            {
                System.Windows.Forms.MessageBox.Show("با توجه به اطلاعات وارد شده ، تالاری برای ارائه وجود ندارد");
            }

            Response.Redirect(@"~/Costumer/findSuiteableHall.aspx");
        }
        else
        {
            System.Windows.Forms.MessageBox.Show("تاریخ انتخابی ، قبل از زمان حاضر است. " + "\n" + "زمان دیگری را انتخاب کنید");
            
        }
    }

}