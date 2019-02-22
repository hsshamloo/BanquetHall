<%@ Page Title="" Language="C#" MasterPageFile="~/BanquetMasterPage.master" AutoEventWireup="true" CodeFile="HallInforMationForManage.aspx.cs" Inherits="HallInforMationForManage" EnableEventValidation="false" %>
<%@ Register Src="~/Controls/ShowHallTitle.ascx" TagName="ShowHallTitle" TagPrefix="sht"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../App_Themes/StyleSheet1.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="MainPage">
        <div class="MainPageTitle">
            <asp:Image ID="Image1" runat="server" 
                ImageUrl="~/Image/ManageAndEditHallTitle.png" />
        </div>
        <div class="MainPageContent" style="text-align: left; width: 860px; left: 30px; ">
           <div style="text-align: right">
           .تالار هایی که در چند روز آینده رزرو شده اند ، غیر قابل تغییر و حذف می باشند
           </div>
           <div style="position:relative ; top:10px; overflow: auto; height:620px">
            <asp:Panel ID="Panel2" runat="server" CssClass="panelTegisterUser">
            </asp:Panel>
           </div>
        </div>
    </div>
</asp:Content>

