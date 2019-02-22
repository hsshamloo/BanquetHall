<%@ Page Title="" Language="C#" MasterPageFile="~/BanquetMasterPage.master" AutoEventWireup="true" CodeFile="ReportReserveInNearDays.aspx.cs" Inherits="ReportReserveInNearDays" EnableEventValidation="false"%>
<%@ Register Src="~/Controls/briefReserveInfo.ascx" TagName="brifReserveInfoControl" TagPrefix="bri" %>
<%@ Register assembly="Heidarpour.WebControlUI" namespace="Heidarpour.WebControlUI" tagprefix="rhp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../App_Themes/StyleSheet1.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="MainPage">
        <div class="MainPageTitle">
            <asp:Image ID="Image1" runat="server" 
                ImageUrl="~/Image/NearestReserveTitle.png" />
        </div>
        <div class="MainPageContent">
            <div style = "height: 38px">
                <div style="width: auto; height: 35px; float: right; margin:2px">
                    از تاریخ 
                </div>
                <div style="width: auto; height: 35px; float: right; margin:2px">
                    <rhp:DatePicker ID="DatePicker1" runat="server"></rhp:DatePicker>
                </div>
                <div style="width: auto; height: 35px; float: right; margin:2px">
                    تا تاریخ 
                </div>
                <div style="width: auto; height: 35px; float: right; margin:2px">
                    <rhp:DatePicker ID="DatePicker2" runat="server"></rhp:DatePicker>
                </div>
                <div style="width: auto; height: 35px; float: right; margin:2px">
                    
                    <asp:Button ID="Button1" runat="server" BackColor="#FFCC00" 
                        BorderColor="#FFCC00" onclick="Button1_Click1" Text="Button" />
                    
                </div>
                <div style="width: auto; height: 35px; float: right; margin:2px">
                    <asp:RequiredFieldValidator ID="hc" runat="server" 
                        ErrorMessage="تاریخ اول را انتخاب کنید" ControlToValidate="DatePicker1"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="تاریخ دوم را انتخاب کنید" ControlToValidate="DatePicker2"></asp:RequiredFieldValidator>
                    </div>
                </div>
            <asp:Panel ID="Panel2" runat="server" Height="620px" Width="801px" 
                ScrollBars="Vertical" CssClass="panelStyle" >
            </asp:Panel>
        </div>
    </div>
</asp:Content>

