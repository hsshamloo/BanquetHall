using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for MessageAndEmail
/// </summary>
public class MessageAndEmail
{
    DataClassesDataContext context = new DataClassesDataContext();
    private string messageId, messageSender, messageReciver,
        subject, messageText, statusOfMessage, emailOfSender, emailOfReciver;

    public string EmailOfReciver
    {
        get { return emailOfReciver; }
        set { emailOfReciver = value; }
    }

    public string EmailOfSender
    {
        get { return emailOfSender; }
        set { emailOfSender = value; }
    }

    public string MessageId
    {
        get { return messageId; }
        set { messageId = value; }
    }

    public string MessageSender
    {
        get { return messageSender; }
        set { messageSender = value; }
    }

    public string MessageReciver
    {
        get { return messageReciver; }
        set { messageReciver = value; }
    }

    public string Subject
    {
        get { return subject; }
        set { subject = value; }
    }

    public string MessageText
    {
        get { return messageText; }
        set { messageText = value; }
    }

    public string StatusOfMessage
    {
        get { return statusOfMessage; }
        set { statusOfMessage = value; }
    }

    DateTime sendDate, replyDate;

    public DateTime ReplyDate
    {
        get { return replyDate; }
        set { replyDate = value; }
    }

    public DateTime SendDate
    {
        get { return sendDate; }
        set { sendDate = value; }
    }


    public MessageAndEmail()
    {

    }

    public int SendMessage(MessageAndEmail mae)
    {
        string messagIDMaker = "Mesg" + DateTime.Now.Year.ToString() +
            DateTime.Now.Month.ToString() +
            DateTime.Now.Day.ToString() +
            DateTime.Now.Hour.ToString() +
            DateTime.Now.Minute.ToString() +
            DateTime.Now.Second.ToString() +
            DateTime.Now.Millisecond.ToString();


        MessageTable mt = new MessageTable()
        {
            MessageId = messagIDMaker,
            MessageReciver = mae.MessageReciver,
            MessageSender = mae.MessageSender,
            MessageText = mae.MessageText,
            Subject = mae.Subject,
            SendDate = mae.SendDate,
            StatusOfMessage = mae.StatusOfMessage,
            EmailOfReciver = mae.EmailOfReciver,
            EmailOfSender = mae.EmailOfSender,
        };

        try
        {

            context.MessageTables.InsertOnSubmit(mt);
            context.SubmitChanges();
            return 1;
        }
        catch (Exception x)
        {
            string me = x.Message;
            return 0;
        }

    }

    public MessageAndEmail readMessage(string messagId)
    {
        var message = context.MessageTables.First(
            mto => mto.MessageId == messagId);
        MessageAndEmail messageContent = null;
        try
        {
            messageContent = new MessageAndEmail()
            {
                MessageId = message.MessageId,
                MessageReciver = message.MessageReciver,
                MessageSender = message.MessageSender,
                MessageText = message.MessageText,
                SendDate = (DateTime)message.SendDate,
                Subject = message.Subject,
                StatusOfMessage = message.StatusOfMessage,
                EmailOfReciver = message.EmailOfReciver,
                EmailOfSender = message.EmailOfSender,
            };
            return messageContent;
        }
        catch (Exception)
        {
            return messageContent;
        }


    }
    public void updateMessageInfo(string messageIdToRetrvie,
        string newStatus, DateTime timeOfChange)
    {
        try
        {
            var message = context.MessageTables.First(mes => mes.MessageId
                == messageIdToRetrvie);
            message.ReplyDate = timeOfChange;
            message.StatusOfMessage = newStatus;
            context.SubmitChanges();
        }
        catch (Exception)
        {
            
            throw;
        }
    }

    public Array allKindOfUser()
    {
        Array allRoleType = (from allRoleTypeInMessageTable in context.MessageTables
                           select allRoleTypeInMessageTable.MessageSender.ToString()).Distinct().ToArray();
        return allRoleType;
    }
}