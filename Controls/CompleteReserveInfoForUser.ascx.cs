using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_CompleteReserveInfoForUser : System.Web.UI.UserControl
{
    private string reserveId;

    public string ReserveId
    {
        get { return reserveId; }
        set { reserveId = value; }
    }

    DataBaseConnection db = new DataBaseConnection();
    ReceptionHalls rh = new ReceptionHalls();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (reserveId != null)
        {
            ReservationAndCancelation reserveAndCancelObj = new ReservationAndCancelation().rertriveReserveInformation(reserveId);
            UserEmailb.Text = reserveAndCancelObj.Email;
            UserMemberNameLb.Text = reserveAndCancelObj.CostumerName;
            NumberOfGuestLb.Text = reserveAndCancelObj.NumberOfGuest.ToString();
            reserveDateLb.Text = db.toPersianDate(reserveAndCancelObj.ReserveDate);
            cermonyTypeLb.Text = reserveAndCancelObj.TypeOfParty;
            ShowHallTitle1.HallInformation = rh.retriveHallInformaion(reserveAndCancelObj.ReHallId);
            CostumerMessageLb.Text = reserveAndCancelObj.CostumerMessage;
            submitDateLb.Text = db.toPersianDate(reserveAndCancelObj.SubmitDate);
            HallCahrgeLb.Text = ((int)reserveAndCancelObj.PriceOfReserve).ToString();
        }
    }
}