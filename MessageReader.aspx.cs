using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Manager_MessageReader : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        string messageId = Request.QueryString["MessageId"];
        MessageAndEmail messageInfo =
            new MessageAndEmail().readMessage(messageId);
        MessageReaderAndReply1.MessageIfno = messageInfo;
    }
}