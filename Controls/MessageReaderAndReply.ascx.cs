using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_MessageReaderAndReply : System.Web.UI.UserControl
{
    
    private MessageAndEmail messageIfno;

    public MessageAndEmail MessageIfno
    {
        get { return messageIfno; }
        set { messageIfno = value; }
    }
    string roleType;
    DataBaseConnection db = new DataBaseConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        roleType = HttpContext.Current.Session["UserRoleType"].ToString();
        if (messageIfno != null)
        {
            MessageSenderLb.Text = messageIfno.MessageSender;
            MessageReciverLb.Text = messageIfno.MessageReciver;
            DateOfMessageLb.Text = db.toPersianDate(messageIfno.SendDate);
            SubjectOfMessageLb.Text = messageIfno.Subject;
            RecivedMessageContentTxt.Text = messageIfno.MessageText;
        }

    }
    protected void SentBtn_Click(object sender, ImageClickEventArgs e)
    {
        MessageAndEmail newMessageToReply = new MessageAndEmail()
        {
            MessageReciver = messageIfno.MessageSender,
            MessageSender = messageIfno.MessageReciver,
            Subject = messageIfno.Subject,
            SendDate = DateTime.Now,
            MessageText = MessageToSendTxt.Text,
            StatusOfMessage = "بی پاسخ",
        };

        newMessageToReply.updateMessageInfo(messageIfno.MessageId,
            "پاسخ داده شده", DateTime.Now);
        switch (roleType)
        {
            case "مشتری": Response.Redirect(@"~/Costumer/UsersPage.aspx"); break;
            case "مدیر": Response.Redirect(@"~/Manager/ManagerPage.aspx"); break;
            case "مدیر آشپزخانه": Response.Redirect(@"~/Catering/CateringPage.aspx"); break;
            case "مدیر انبار": Response.Redirect(@"~/Warehouse/WareHouse.aspx"); break;
            default: System.Windows.Forms.MessageBox.Show("عضویت کاربر هنوز تایید نگردیده است");
                Response.Redirect(@"~/Default.aspx"); break;

        }
        //newMessageToReply.SendMessage(newMessageToReply);


        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        switch (roleType)
        {
            case "مشتری": Response.Redirect(@"~/Costumer/UsersPage.aspx"); break;
            case "مدیر": Response.Redirect(@"~/Manager/ManagerPage.aspx"); break;
            case "مدیر آشپزخانه": Response.Redirect(@"~/Catering/CateringPage.aspx"); break;
            case "مدیر انبار": Response.Redirect(@"~/Warehouse/WareHouse.aspx"); break;
            default: System.Windows.Forms.MessageBox.Show("عضویت کاربر هنوز تایید نگردیده است");
                Response.Redirect(@"~/Default.aspx"); break;

        }
    }
}