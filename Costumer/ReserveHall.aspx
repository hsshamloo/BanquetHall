<%@ Page Title="" Language="C#" MasterPageFile="~/BanquetMasterPage.master" AutoEventWireup="true" CodeFile="ReserveHall.aspx.cs" Inherits="ReserveHall" EnableEventValidation="false"%>


<%@ Register src="~/Controls/ReservationForm.ascx" tagname="ReservationForm" tagprefix="uc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../App_Themes/StyleSheet1.css" rel="stylesheet" type="text/css" />
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="MainPage">
        <div class="MainPageTitle">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Image/HallReserveTitle.png" />
        </div>
        <div class="MainPageContent" style="text-align: left ; top : 200px; height:auto;" >
            <uc1:ReservationForm ID="ReservationForm1" runat="server" />
            </div>
    </div>

</asp:Content>

