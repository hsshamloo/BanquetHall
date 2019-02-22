<%@ Page Title="" Language="C#" MasterPageFile="~/BanquetMasterPage.master" AutoEventWireup="true" CodeFile="ListOfFactorForUser.aspx.cs" Inherits="ListOfFactorForUser" EnableEventValidation="false"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../App_Themes/StyleSheet1.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="MainPage">
        <div class="MainPageTitle">
            <asp:Image ID="Image1" runat="server" 
                ImageUrl="~/Image/listOfFactorTitle.png" />
        </div>
        <div class="MainPageContent" style="text-align: left; width: 860px; left: 30px; overflow: auto;">
            <div style="text-align: right" >
                برای مشاهده فاکتور نهایی ، بر روی تاریخ برگزاری مجلس خود کلیک کنید
            </div>
            <asp:Panel ID="Panel2" runat="server" Height="620px" Width="801px" 
                ScrollBars="Vertical" CssClass="panelStyle" >
                <br />
                <asp:Label ID="statusLabel" runat="server" Text="!صورت حسابی  صادر نشده است" 
                    style="color: #FFFFCC" Visible="False"></asp:Label>
                </asp:Panel>
        </div>
    </div>
</asp:Content>

