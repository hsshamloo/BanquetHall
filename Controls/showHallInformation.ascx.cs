using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class showHallInformation : System.Web.UI.UserControl
{
    private ReceptionHalls hallInfoToShow;

    public ReceptionHalls HallInfoToShow
    {
        get { return hallInfoToShow; }
        set { hallInfoToShow = value; }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        hallNamelb.Text = hallInfoToShow.HallName;
        halltypelb.Text = hallInfoToShow.HallType;
        hallPricelb.Text = hallInfoToShow.FullPrice.ToString();
        HallDescriptionlb.Text = hallInfoToShow.HallDescription;
        hallCapacitylb.Text = hallInfoToShow.Capacity.ToString();

    }
    
}