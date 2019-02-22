using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_RetriveUserInformation : System.Web.UI.UserControl
{
    DataClassesDataContext context = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            GridView1.DataSource = LinqDataSource1;
            GridView1.DataBind();
        }

       
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        switch (DropDownList1.SelectedValue)
        {
            case "Name":
                MultiView1.Visible = true;
                MultiView1.ActiveViewIndex = 0; break;
            case"Date":
                MultiView1.Visible = true;
                MultiView1.ActiveViewIndex = 1; 
                break;
            case "All":
                MultiView1.Visible = false;
                GridView1.DataSource= LinqDataSource1;
                GridView1.DataBind();
                break;
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        GridView1.DataSource = LinqDataSource2;
        GridView1.DataBind();
    }
    protected void SearchNameBtn_Click(object sender, EventArgs e)
    {
        GridView1.DataSource = LinqDataSource3;
        GridView1.DataBind();
    }
}