<%@ Page Title="" Language="C#" MasterPageFile="~/BanquetMasterPage.master" AutoEventWireup="true"
    CodeFile="MessagePage.aspx.cs" Inherits="Manager_MessagePage" %>

<%@ Register Src="~/Controls/MessageControl.ascx" TagName="MessageControl" TagPrefix="uc1" %>
<%@ Register src="../Controls/ReciveAndReplyEmailControl.ascx" tagname="ReciveAndReplyEmailControl" tagprefix="uc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../App_Themes/StyleSheet1.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%--<script type="text/C#" runat="server">
        ReceptionHalls rh = new ReceptionHalls();
        DataBaseConnection db = new DataBaseConnection();

        public string removePartOfString(string message)
        {
            string messageAfterRemove = message;
            if (message.Length > 40)
            {
                messageAfterRemove = "..." + message.Remove(30);
            }
            return messageAfterRemove;
        }
        public string addressMaker(string messageId)
        {
            string message = "~/Manager/MessageReader.aspx?MessageId=" + messageId;
            return message;
        }
        
    </script>--%>
    <div class="MainPage">
        <div class="MainPageTitle">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Image/PMTitel.png" />
        </div>
        <div class="MainPageContent">
            <uc2:ReciveAndReplyEmailControl ID="ReciveAndReplyEmailControl1" 
                runat="server" />
        </div>
    </div>
</asp:Content>
