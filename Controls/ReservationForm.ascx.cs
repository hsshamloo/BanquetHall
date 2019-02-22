using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_ReservationForm : System.Web.UI.UserControl
{

    private Members memberShipObject;

    public Members MemberShipObject
    {
        get { return memberShipObject; }
        set { memberShipObject = value; }
    }

    private ReceptionHalls receptionHallObject;

    public ReceptionHalls ReceptionHallObject
    {
        get { return receptionHallObject; }
        set { receptionHallObject = value; }
    }

    ReserveDateAndCapacity reserveDateAndCapacityObject;
    ReservationAndCancelation resecationAndCanceleationObject = new ReservationAndCancelation();
    DataBaseConnection db = new DataBaseConnection();

    public ReserveDateAndCapacity ReserveDateAndCapacityObject
    {
        get { return reserveDateAndCapacityObject; }
        set { reserveDateAndCapacityObject = value; }
    }




    protected void Page_Load(object sender, EventArgs e)
    {
        receptionHallObject = (ReceptionHalls)Session["ReceptionHallInformation"];
        reserveDateAndCapacityObject = (ReserveDateAndCapacity)Session["DateAndCapacityOfReseve"];
        memberShipObject = (Members)Session["ValidUser"];
        try
        {
            UserMemberNameLb.Text = memberShipObject.gender + " " + memberShipObject.fName + " " + memberShipObject.lName;
            UserEmailb.Text = memberShipObject.email;
            NumberOfGuestLb.Text = reserveDateAndCapacityObject.NumberOfGuest.ToString();
            dateOfCermoneyLb.Text =db.toPersianDate( reserveDateAndCapacityObject.ReserveDate);
            hallPriceLb.Text = ((int)receptionHallObject.FullPrice).ToString();
            ShowHallTitle1.HallInformation = receptionHallObject;

            ShowHallTitle1.EditView = false;
            ShowHallTitle1.ReserveView = false;
        }
        catch (Exception)
        {

            Response.Redirect(@"~/Default.aspx");
        }

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        resecationAndCanceleationObject.Email = memberShipObject.email;
        resecationAndCanceleationObject.ReHallId = receptionHallObject.HallId;
        resecationAndCanceleationObject.TypeOfParty = typeOfCermonydd.Text;
        resecationAndCanceleationObject.ReserveDate = reserveDateAndCapacityObject.ReserveDate;
        resecationAndCanceleationObject.SubmitDate = DateTime.Now;
        resecationAndCanceleationObject.NumberOfGuest = reserveDateAndCapacityObject.NumberOfGuest;
        resecationAndCanceleationObject.CostumerMessage = costumerMessageTxt.Text;
        resecationAndCanceleationObject.CostumerName = UserMemberNameLb.Text;
        resecationAndCanceleationObject.PriceOfReserve = receptionHallObject.FullPrice;
        resecationAndCanceleationObject.StatusOfReserve = "معلق";

        string message =  resecationAndCanceleationObject.reserveHall(resecationAndCanceleationObject);
        if (message.Contains("Resv"))
        {
            System.Windows.Forms.MessageBox.Show(" رزرو انجام شد "+ "\n"+" به بخش انتخاب غذا منتقل می شوید", "پیام سیستم");
            HttpContext.Current.Session.Add("ReserveId", message);
            Response.Redirect(@"~/Costumer/FoodReservation.aspx");
        }
        System.Windows.Forms.MessageBox.Show(message,"پیام سیستم");
        Response.Redirect(@"~/Costumer/ReserveHall.aspx");

    }
}