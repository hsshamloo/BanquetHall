using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RegisterNewUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["registerNewUser"] != null)
        {
            Label memberShipLb = new Label();
            memberShipLb.Text = Session["registerNewUser"].ToString();
            memberShipLb.Style.Add("color", "#ffcc33");
            Panel1.Controls.Clear();
            Panel1.Controls.Add(memberShipLb);
        }

    }
}