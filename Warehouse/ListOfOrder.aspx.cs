using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

public partial class Warehouse_ListOfOrder : System.Web.UI.Page
{
    ItemOrder ioObject = new ItemOrder();

    protected void Page_Load(object sender, EventArgs e)
    {
        //DataBaseConnection db = new DataBaseConnection();
        //Array listOfDate = ioObject.theListOfDateOfOrderInSameStatus("معلق");
        //foreach (var orderDate in listOfDate)
        //{
        //    HyperLink dateOfOrderHL = new HyperLink();
        //    dateOfOrderHL.ForeColor = Color.White;
        //    string billTitel = db.toPersianDate((DateTime)orderDate);
        //    dateOfOrderHL.Text = billTitel;
        //    dateOfOrderHL.NavigateUrl = "~/Warehouse/OrderListFromKitchen.aspx?dateOfOrder="+orderDate.ToString();
        //    //Session.Add("dateOfOrder", orderDate);
        //        //?OrderDate=" + orderDate.ToShortDateString();
        //    Panel2.Controls.Add(new LiteralControl("</br>"));
        //    Panel2.Controls.Add(new LiteralControl("</br>"));

        //    Panel2.Controls.Add(new LiteralControl("</br>"));
        //    Panel2.Controls.Add(dateOfOrderHL);
        //}
    }
}