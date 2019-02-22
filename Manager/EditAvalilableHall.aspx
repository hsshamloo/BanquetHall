<%@ Page Title="" Language="C#" MasterPageFile="~/BanquetMasterPage.master" AutoEventWireup="true" CodeFile="EditAvalilableHall.aspx.cs" Inherits="EditAvalilableHall" EnableEventValidation="false"%>

<%@ Register src="~/Controls/EditHallInfo.ascx" tagname="EditHallInfo" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

<link href="../App_Themes/StyleSheet1.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="MainPage">
        <div class="MainPageTitle">
            <asp:Image ID="Image1" runat="server" 
                ImageUrl="~/Image/EditHallInfoTitel.png"  />
        </div>
        <div class="MainPageContent">
            <asp:Panel ID="Panel2" runat="server" CssClass="panelTegisterUser">
                <uc1:EditHallInfo ID="EditHallInfo1" runat="server" />
               
            </asp:Panel>
        </div>
    </div>
</asp:Content>

