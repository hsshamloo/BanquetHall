using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EditAvalilableHall : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string hallId = Request.QueryString["hallId"];
        ReceptionHalls hallToEdit = new ReceptionHalls().retriveHallInformaion(hallId);
        EditHallInfo1.OldHallInfo = hallToEdit;
    }
}