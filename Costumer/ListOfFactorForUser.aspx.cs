using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

public partial class ListOfFactorForUser : System.Web.UI.Page
{
    ReservationAndCancelation racObject = new ReservationAndCancelation();
    protected void Page_Load(object sender, EventArgs e)
    {
        DataBaseConnection db = new DataBaseConnection();
        Members validMember = (Members)Session["ValidUser"];
        string emailAddress = validMember.email;
        ReservationAndCancelation reseAndCancObj = new ReservationAndCancelation();
        List<ReservationTable> reservationObj = reseAndCancObj.showAllReserveInfoByEmail(emailAddress, "انصرافی");

        if (reservationObj.Count != 0)
        {
            foreach (var info in reservationObj)
            {
                HyperLink hlToFactorOfReserve = new HyperLink();
                hlToFactorOfReserve.ForeColor = Color.White;

                //= "در تاریخ" + "" + db.toPersianDate(info.ReserveDate).ToString() + "" + "مجلس برگزار می شود";
                string billTitel = db.toPersianDate(info.ReserveDate);
                hlToFactorOfReserve.Text = billTitel;
                hlToFactorOfReserve.NavigateUrl = "~/Costumer/BillReportForUser.aspx?ReserveId=" + info.ReservationId;
                Panel2.Controls.Add(new LiteralControl("</br>"));
                Panel2.Controls.Add(new LiteralControl("</br>"));

                Panel2.Controls.Add(new LiteralControl("</br>"));
                Panel2.Controls.Add(hlToFactorOfReserve);
            }
        }
        if (Panel2.Controls.Count== 0)
            statusLabel.Visible = true;

    }
}