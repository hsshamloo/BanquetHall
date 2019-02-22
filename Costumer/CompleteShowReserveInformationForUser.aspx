<%@ Page Title="" Language="C#" MasterPageFile="~/BanquetMasterPage.master" AutoEventWireup="true" CodeFile="CompleteShowReserveInformationForUser.aspx.cs" Inherits="CompleteShowReserveInformationForUser" %>


<%@ Register src="~/Controls/CompleteReserveInfoForUser.ascx" tagname="CompleteReserveInfoForUser" tagprefix="uc2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../App_Themes/StyleSheet1.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            color: #FFCC33;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="MainPage" style = "height:980px;">
       
        <div class="MainContentWithOutTitle" style="text-align: left; width: 860px; left: 30px; overflow: auto; height: 850px">
            <asp:Panel ID="Panel2" runat="server"  Height="529px" ScrollBars="Auto">
                <uc2:CompleteReserveInfoForUser ID="CompleteReserveInfoForUser1" 
                    runat="server" />
            </asp:Panel>
            <div class="foodInformationHalfMainpageContent" style="height:230px">
                <div style="text-align: center" >
                    <asp:ImageButton ID="ImageButton1" runat="server" 
                        ImageUrl="~/Image/listOfReservedFoof.png" onclick="ImageButton1_Click" />
                    
                <div>
                
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                        AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" 
                        BorderWidth="1px" CellPadding="2" DataKeyNames="FoodOrderID" 
                        DataSourceID="LinqDataSource1" ForeColor="Black" GridLines="None" PageSize="4" 
                        style="text-align: right">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <Columns>
                            <asp:BoundField DataField="Price" HeaderText="قیمت" SortExpression="Price">
                            <HeaderStyle HorizontalAlign="Right" />
                            <ItemStyle Width="200px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Count" HeaderText="تعداد" SortExpression="Count">
                            <HeaderStyle HorizontalAlign="Right" />
                            <ItemStyle Width="200px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="FoodName" HeaderText="نام خوراک" 
                                SortExpression="FoodName">
                            <HeaderStyle HorizontalAlign="Right" />
                            <ItemStyle Width="350px" />
                            </asp:BoundField>
                            <asp:CommandField DeleteText="حذف" ShowDeleteButton="True">
                            <ItemStyle Width="60px" />
                            </asp:CommandField>
                        </Columns>
                        <FooterStyle BackColor="Tan" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                            HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <SortedAscendingCellStyle BackColor="#FAFAE7" />
                        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                        <SortedDescendingCellStyle BackColor="#E1DB9C" />
                        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                    </asp:GridView>
                
                </div>
            </div>
            <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
                ContextTypeName="DataClassesDataContext" EntityTypeName="" 
                TableName="FoodOrderTables" Where="ReservationId == @ReservationId1" 
                EnableDelete="True" EnableInsert="True" EnableUpdate="True">
                <WhereParameters>
                    <asp:QueryStringParameter Name="ReservationId1" QueryStringField="ReserveId" 
                        Type="String" />
                </WhereParameters>
            </asp:LinqDataSource>
            <div style="height: 71px; text-align: right; font-size: medium; font-family: Tahoma; color: #FFCC00;">
            </div>
        </div>
    </div>
    </div>
</asp:Content>