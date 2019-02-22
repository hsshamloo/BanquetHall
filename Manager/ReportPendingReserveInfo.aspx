<%@ Page Title="" Language="C#" MasterPageFile="~/BanquetMasterPage.master" AutoEventWireup="true" CodeFile="ReportPendingReserveInfo.aspx.cs" Inherits="ReportPendingReserveInfo" EnableEventValidation="false"%>
<%@ Register Src="~/Controls/briefReserveInfo.ascx" TagName="brifReserveInfoControl" TagPrefix="bri" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../App_Themes/StyleSheet1.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="MainPage">
        <div class="MainPageTitle">
            <asp:Image ID="Image1" runat="server" 
                ImageUrl="~/Image/PendingReserveTitle.png" />
        </div>
        <div class="MainPageContent" >
           <div>
               سفارش هایی که برای آنها فاکتور صادر نشده باشد ، برای تایید نمایش داده نمی شوند<br />
               سفارش های بدون فاکتور ، 10 روز پس از ثبت حذف می شوند</div>
            <asp:Panel ID="Panel2" runat="server" Height="600px" Width="801px" 
                ScrollBars="Vertical" CssClass="panelStyle" >
            </asp:Panel>
        </div>
    </div>
</asp:Content>

