<%@ Page Title="" Language="C#" MasterPageFile="~/BanquetMasterPage.master" AutoEventWireup="true" CodeFile="AllFoodReservationInformation.aspx.cs" Inherits="Catering_AllFoodReservationInformation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../App_Themes/StyleSheet1.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="MainPage">
        <div class="MainPageTitle">
            <asp:Image ID="Image1" runat="server" 
                ImageUrl="~/Image/listOfReservedFootTitel.png" />
        </div>
        <div class="MainPageContent" style="text-align: left; width: 860px; left: 30px; overflow: auto;">
            
            <div style="text-align: right ; position:relative; margin-top:0px;">
            
                <asp:HyperLink ID="HyperLink7" runat="server" style="color: #FFFFCC" 
                    NavigateUrl="~/Catering/FoodReserveInfoInTime.aspx">لیست کل سفارشهای غذا بر اساس تاریخ </asp:HyperLink>
            
            </div>
            <div style="text-align: right ; position:relative; margin-top:5px;">
            
            </div>
            <div style="text-align: right ; position:relative; margin-top:20px;" >
                برای مشاهده لیست غذاهای سفارش داده شده، بر روی تاریخ برگزاری مجلس کنید
            </div>
            <div style="text-align: right ; position:relative; margin-top:10px; height:550px">
            <asp:Panel ID="Panel2" runat="server" Height="530px" Width="801px" 
                ScrollBars="Vertical" CssClass="panelStyle" >
                </asp:Panel>
                </div>
        </div>
    </div>
</asp:Content>

