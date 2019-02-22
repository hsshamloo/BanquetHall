<%@ Page Title="" Language="C#" MasterPageFile="~/BanquetMasterPage.master" AutoEventWireup="true" CodeFile="CompleteShowReserveInformation.aspx.cs" Inherits="Controls_CompleteShowReserveInformation" EnableEventValidation="false"%>

<%@ Register src="~/Controls/CopmpleteReserveInfo.ascx" tagname="CopmpleteReserveInfo" tagprefix="uc1" %>

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
                <uc1:CopmpleteReserveInfo ID="CopmpleteReserveInfo1" runat="server" />
            </asp:Panel>
            <div class="foodInformationHalfMainpageContent" style="height:230px">
                <div style="text-align: center" >
                    <span class="style1">لیست خوراک های سفارش داده شده</span></div>
                <div>
                
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                        AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" 
                        BorderWidth="1px" CellPadding="2" DataKeyNames="FoodOrderID" 
                        DataSourceID="LinqDataSource1" ForeColor="Black" GridLines="None" PageSize="4" 
                        style="text-align: right">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <Columns>
                            <asp:TemplateField HeaderText="قیمت" SortExpression="Price">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Price") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Convert.ToInt32(Eval("Price")) %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Right" />
                                <ItemStyle Width="210px" />
                            </asp:TemplateField>
                            <asp:BoundField DataField="Count" HeaderText="تعداد" SortExpression="Count">
                            <HeaderStyle HorizontalAlign="Right" />
                            <ItemStyle Width="200px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="FoodName" HeaderText="نام خوراک" 
                                SortExpression="FoodName">
                            <HeaderStyle HorizontalAlign="Right" />
                            <ItemStyle Width="400px" />
                            </asp:BoundField>
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
            <div style =" height:auto; width : auto; float:right; top: 815px; left: 354px; position: absolute;">
                <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/Image/finallBill.png">HyperLink</asp:HyperLink>
            </div>
            </div>
        </div>
    </div>
</asp:Content>

