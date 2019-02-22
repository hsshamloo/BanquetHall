<%@ Page Title="" Language="C#" MasterPageFile="~/BanquetMasterPage.master" AutoEventWireup="true" CodeFile="BrifShowReservesInformation.aspx.cs" Inherits="BrifShowReservesInformation" EnableEventValidation="false"%>

<%@ Register Src="~/Controls/brifReserveInfoForUser.ascx" TagName="BrifReserveInfoForUser"  TagPrefix="bri1"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../App_Themes/StyleSheet1.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="MainPage">
        <div class="MainPageTitle">
            <asp:Image ID="Image1" runat="server" 
                ImageUrl="~/Image/listOfReserveTitle.png" />
        </div>
        <div class="MainPageContent" style="text-align: left; width: 860px; left: 30px; overflow: auto;">
            <div style="text-align: right">
             
                .سفارش مورد نظر خود را با کلیک بر روی کد رزرو آن ، انتخاب کنید
                <br />
                سفارش هایی که فاکتور برای آن صادر نگردیده است ، دکمه صدور برای آنها فعال می باشد 
                 قابل ذکر است ، سفارش های بدون فاکتور ، قابل پیگیری نمی باشد 
                </div>
           <div>
            <asp:Panel ID="Panel2" runat="server" Width="801px" 
                ScrollBars="Vertical" CssClass="panelStyle" Height="589px">
                <br />
                <asp:Label ID="StatusLabel" runat="server" ForeColor="#FFFFCC" 
                    Text="!سفارشی صورت نگرفته است" Visible="False"></asp:Label>
            </asp:Panel>
            </div>
        </div>
    </div>
</asp:Content>

