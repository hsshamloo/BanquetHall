<%@ Page Title="" Language="C#" MasterPageFile="BanquetMasterPage.master" AutoEventWireup="true" CodeFile="MessageReader.aspx.cs" Inherits="Manager_MessageReader" %>

<%@ Register src="~/Controls/MessageReaderAndReply.ascx" tagname="MessageReaderAndReply" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="App_Themes/StyleSheet1.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="MainPage">
        <div class="MainPageTitle">
            <asp:Image ID="Image1" runat="server" 
                ImageUrl="~/Image/ResiveAndSendAnswer.png" />
        </div>
        <div class="MainPageContent">
            
            <uc1:MessageReaderAndReply ID="MessageReaderAndReply1" runat="server" />
            
        </div>
    </div>

</asp:Content>

