<%@ Page Title="" Language="C#" MasterPageFile="~/BanquetMasterPage.master" AutoEventWireup="true" CodeFile="RegisterNewHallForm.aspx.cs" Inherits="RegisterNewHallForm" EnableEventValidation="false"%>

<%@ Register src="~/Controls/RegisterNewHall.ascx" tagname="RegisterNewHall" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../App_Themes/StyleSheet1.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div class="MainPage">
        <div class="MainPageTitle">
            <asp:Image ID="Image1" runat="server" 
                ImageUrl="~/Image/reGisterNewHallTitel.png" />
        </div>
        <div class="MainPageContent">
            <asp:Panel ID="Panel2" runat="server" CssClass="panelTegisterUser">
                <uc1:RegisterNewHall ID="RegisterNewHall1" runat="server" />
            </asp:Panel>
        </div>
    </div>
</asp:Content>

