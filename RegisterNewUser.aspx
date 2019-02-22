<%@ Page Title="" Language="C#" MasterPageFile="~/BanquetMasterPage.master" AutoEventWireup="true" CodeFile="RegisterNewUser.aspx.cs" Inherits="RegisterNewUser" EnableEventValidation="false" %>

<%@ Register src="~/Controls/RegisterControl.ascx" tagname="RegisterControl" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="App_Themes/StyleSheet1.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="MainPage">
<div class="MainPageTitle" style= " background-image: url('Image/NewUserTitle.png'); ">

</div> 
<div class="MainPageContent">
    <asp:Panel ID="Panel1" runat="server" CssClass="panelTegisterUser">
        <uc1:RegisterControl ID="RegisterControl1" runat="server" />
     
    </asp:Panel> 
    </div>
   

</div>
</asp:Content>

