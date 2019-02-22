<%@ Page Title="" Language="C#" MasterPageFile="~/BanquetMasterPage.master" AutoEventWireup="true"
    CodeFile="ReportUserInfoByEmail.aspx.cs" Inherits="ReportUserInfoByEmail" EnableEventValidation="false"%>
    <%@ Register Src="~/Controls/briefReserveInfo.ascx" TagName="brifReserveInfoControl" TagPrefix="bri" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="App_Themes/StyleSheet1.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="MainPage">
        <div class="MainPageTitle">
            <asp:Image ID="Image1" runat="server" 
                ImageUrl="~/Image/reservePlacedByEmailTitel.png" />
        </div>
        <div class="MainPageContent">
            <div style = "height: 38px">
                <div style="width: auto; height: 35px; float: right; margin:2px">
                    :نام کاربری
                </div>
                <div style="width: auto; height: 35px; float: right; margin:2px">
                    <asp:TextBox ID="memberEmail" runat="server"></asp:TextBox>
                </div>
                <div style="width: auto; height: 35px; float: right; margin:2px">
                    <asp:Button ID="Button1" runat="server" Text="جستجو" BackColor="#FFCC00" 
                        onclick="Button1_Click" />
                </div>
                </div>
            <asp:Panel ID="Panel2" runat="server" Height="620px" Width="801px" 
                ScrollBars="Vertical" CssClass="panelStyle" >
            </asp:Panel>
        </div>
    </div>
</asp:Content>
