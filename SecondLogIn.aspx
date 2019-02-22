<%@ Page Title="" Language="C#" MasterPageFile="~/BanquetMasterPage.master" AutoEventWireup="true" CodeFile="SecondLogIn.aspx.cs" Inherits="SecondLogIn" %>

<%@ Register src="Controls/LogInControl.ascx" tagname="LogInControl" tagprefix="uc1" %>
<%@ Register src="Controls/SecondLogInControl.ascx" tagname="SecondLogInControl" tagprefix="uc2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="App_Themes/StyleSheet1.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="MainPage">
        <div class="MainPageTitle">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Image/LogInTitel copy.png" />
        </div>
        <div class="MainPageContent" >
            <asp:Panel ID="Panel2" runat="server" CssClass="panelTegisterUser">
                <uc2:SecondLogInControl ID="SecondLogInControl1" runat="server" />
            </asp:Panel>
        </div>
    </div>
</asp:Content>

