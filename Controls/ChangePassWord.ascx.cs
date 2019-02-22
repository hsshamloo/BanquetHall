using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_ChangePassWord : System.Web.UI.UserControl
{
    RegisterAnLogIn ralObject = new RegisterAnLogIn();
    private Members memberInfo;

    public Members MemberInfo
    {
        get { return memberInfo; }
        set { memberInfo = value; }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        string oldPassWord = ralObject.retriveOldPassWord(memberInfo.email);
        OldPassWord.Text = oldPassWord;

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        
        string message;
        message = ralObject.UpdatePassWord(
            memberInfo.email, newPassTxt.Text);

        System.Windows.Forms.MessageBox.Show(message,"پیام سیستم");
        HttpContext.Current.Session["ValidUser"] = null;
        Response.Redirect("~/Default.aspx");

    }
}