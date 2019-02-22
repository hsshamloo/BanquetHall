using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ReportItemToBuy : System.Web.UI.Page
{
    int counter = 0;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        string message = new ItemInWarehouse().buyAcepance("مورد نیاز", "تایید خرید");
        System.Windows.Forms.MessageBox.Show(message);
        Response.Redirect("~/Manager/ManagerPage.aspx");
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        counter++;
    }
    protected void GridView1_DataBound(object sender, EventArgs e)
    {
        if (counter == 0)
        {
            Label2.Visible = true;
            ImageButton1.Visible = false;
        }
    }
}