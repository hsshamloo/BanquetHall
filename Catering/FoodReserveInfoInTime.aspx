<%@ Page Title="" Language="C#" MasterPageFile="~/BanquetMasterPage.master" AutoEventWireup="true"
    CodeFile="FoodReserveInfoInTime.aspx.cs" Inherits="Catering_FoodReserveInfoInTime" %>

<%@ Register Assembly="Heidarpour.WebControlUI" Namespace="Heidarpour.WebControlUI"
    TagPrefix="rhp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../App_Themes/StyleSheet1.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="MainPage">
        <div class="MainPageTitle">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Image/listOfReservedFootTitel.png" />
        </div>
        <div class="MainPageContent">
            <div style="text-align: right; position: relative; height:35px">
                <div style="width: auto; float: right ; height:35px">
                    سفارش های موجود در
                </div>
                <div style="width: auto; float: right; margin-right: 5px; height:35px">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem>روز</asp:ListItem>
                        <asp:ListItem>بازه زمانی</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div style="text-align: right; position: relative; margin-top:20px;">
                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="View1" runat="server">
                        <div style="position: relative; margin-top: 10px; height: 35px">
                            <div style="position: relative; margin-top: 0px; height: 35px">
                                <div style="width: auto; float: right">
                                    لیست سفارش ها در تاریخ
                                </div>
                                <div style="width: auto; float: right; margin-right: 5px">
                                    <rhp:DatePicker ID="DatePicker1" runat="server"></rhp:DatePicker>
                                </div>
                                <div style="width: auto; float: right; margin-right: 5px">
                                    <asp:Button ID="Button2" runat="server" Text="جستجو" BackColor="#FFCC00" BorderColor="#FFCC00"
                                        OnClick="Button2_Click" Style="font-family: Tahoma" />
                                </div>
                            </div>
                        </div>
                    </asp:View>
                    <asp:View ID="View2" runat="server">
                        <div style="position: relative; margin-top: 10px; height: 35px">
                            <div style="position: relative; margin-top: 0px; height: 35px">
                                <div style="width: auto; float: right">
                                    لیست سفارش ها از تاریخ
                                </div>
                                <div style="width: auto; float: right; margin-right: 5px">
                                    <rhp:DatePicker ID="DatePicker2" runat="server"></rhp:DatePicker>
                                </div>
                                <div style="width: auto; float: right; margin-right: 5px">
                                    تا تاریخ
                                </div>
                                <div style="width: auto; float: right; margin-right: 5px">
                                    <rhp:DatePicker ID="DatePicker3" runat="server"></rhp:DatePicker>
                                </div>
                                <div style="width: auto; float: right; margin-right: 5px">
                                    <asp:Button ID="Button1" runat="server" Text="جستجو" BackColor="#FFCC00" BorderColor="#FFCC00"
                                        Font-Names="Tahoma" OnClick="Button1_Click" />
                                </div>
                            </div>
                        </div>
                    </asp:View>
                </asp:MultiView>
            </div>
            <div style="text-align: right; position: relative; margin-top: 10px; height: 400px">
                <asp:Panel ID="Panel2" runat="server" Height="380px" ScrollBars="Vertical" 
                    CssClass="panelOfFoodReseverTime">
                </asp:Panel>
            </div>
            <div>
            </div>
        </div>
    </div>
</asp:Content>
