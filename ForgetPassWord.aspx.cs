using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ForgetPassWord : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        System.Windows.Forms.MessageBox.Show("اطلاعات کاربری به ایمیل ارسال شد");
        Response.Redirect("~/Default.aspx");
    }
}