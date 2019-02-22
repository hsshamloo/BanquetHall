using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_MessageControl : System.Web.UI.UserControl
{
    private string denidedUserType;

    public string DenidedUserType
    {
        get { return denidedUserType; }
        set { denidedUserType = value; }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        Array UserTypes = null;
        try
        {
            UserTypes = new Members().allAvailableRoleType(denidedUserType, "UnValid");
        }
        catch (Exception x)
        {

            System.Windows.Forms.MessageBox.Show("خطایی رخ داده است" + x.Message);
        }


        DepartemantName.DataSource = UserTypes;

        if (!IsPostBack)
        {
            DepartemantName.DataBind();
        }

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {


        MessageAndEmail mesAndEmail = new MessageAndEmail()
        {
            MessageReciver = "مدیر",
            MessageSender = "کاربر سایت",
            EmailOfSender = emailTxt.Text,
            SendDate = DateTime.Now,
            Subject = SubjectOfMessageTxt.Text,
            MessageText = TextBox1.Text,
            StatusOfMessage = "معلق",

        };


        int message = mesAndEmail.SendMessage(mesAndEmail);
        switch (message)
        {
            case 1: System.Windows.Forms.MessageBox.Show("پیغام برای مدیریت سایت ارسال شد");
                break;
            case 0: System.Windows.Forms.MessageBox.Show("خطا در هنگام ارسال پیام");
                break;
        }
        Response.Redirect("~/Default.aspx");


    }
}