using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class findSuiteableHall : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["AvailableHallForReserveList"] != null)
        {
            List<ReceptionsHallTable> hallsInfo = (List<ReceptionsHallTable>)Session["AvailableHallForReserveList"];


            foreach (var hall in hallsInfo)
            {

                ReceptionHalls receptionHall = new ReceptionHalls().retriveHallInformaion(hall.ReHallId1);
                ShowHallTitle hallTitle = (ShowHallTitle)LoadControl(@"~/Controls/ShowHallTitle.ascx");
                hallTitle.EditView = false;
                hallTitle.ReserveView = true;
                hallTitle.DeletView = false;
                hallTitle.HallInformation = receptionHall;
                Panel2.Controls.Add(hallTitle);

            }

        }
    }
}
