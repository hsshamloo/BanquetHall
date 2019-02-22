using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string ali = "سلاتسسسسسسسسسسسسسسسسسسسسسسسسسسسسسسسسسسسسسسسسسسسسسسسسسسسسسسسسسسسسسسسسسسسسسسسسسسسسسسسسسسسسسسسسسسس";
        Label2.Text = "..."+ali.Remove(5);
        



        Foods f = new Foods();
        Array a = f.retriveFoodType();
        DropDownList1.DataSource = a;
        if (!IsPostBack)
        {
            DropDownList1.DataBind();
        }


        DataBaseConnection db = new DataBaseConnection();
    }
    protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
    {

    }
}