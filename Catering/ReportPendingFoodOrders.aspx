<%@ Page Title="" Language="C#" MasterPageFile="~/BanquetMasterPage.master" AutoEventWireup="true" CodeFile="ReportPendingFoodOrders.aspx.cs" Inherits="Catering_ReportPendingFoodOrders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../App_Themes/StyleSheet1.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="MainPage">
        <div class="MainPageTitle">
            <asp:Image ID="Image1" runat="server" 
                ImageUrl="~/Image/PendingReserveTitle.png" />
        </div>
        <div class="MainPageContent" style="text-align: left; width: 860px; left: 30px; overflow: auto;">
            <div style="text-align: right" >
                لیست غذاهای سفارش داده شده ، برای مراسم
                <br />
&nbsp;</div>
            
                <div style="height: 359px">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                        CellPadding="2" DataKeyNames="FoodOrderID" DataSourceID="LinqDataSource1" 
                        ForeColor="Black" GridLines="None" style="text-align: right; float: right" 
                        AllowPaging="True">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <Columns>
                            <asp:BoundField DataField="StatusOfOrder" HeaderText="وضعیت" 
                                SortExpression="StatusOfOrder">
                            <HeaderStyle HorizontalAlign="Right" />
                            <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Count" HeaderText="تعداد" 
                                SortExpression="Count" >
                            <HeaderStyle HorizontalAlign="Right" />
                            <ItemStyle Width="150px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="FoodName" HeaderText="نام غذا" 
                                SortExpression="FoodName">
                            <HeaderStyle HorizontalAlign="Right" />
                            <ItemStyle Width="250px" />
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="ایمیل کاربر" SortExpression="Email">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Right" />
                                <ItemStyle Width="150px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="کد سفارش" SortExpression="ReservationId">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("ReservationId") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("ReservationId") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Right" />
                                <ItemStyle Width="150px" />
                            </asp:TemplateField>
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
                <div>
                    <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
                        ContextTypeName="DataClassesDataContext" EntityTypeName="" 
                        TableName="FoodOrderTables" Where="ReservationId == @ReservationId1" 
                        EnableDelete="True" EnableInsert="True" EnableUpdate="True">
                        <WhereParameters>
                            <asp:QueryStringParameter Name="ReservationId1" QueryStringField="ReserveId" 
                                Type="String" />
                        </WhereParameters>
                    </asp:LinqDataSource>
                </div>
                <div style="text-align: center">
                    
                </div>
                
        </div>
    </div>

</asp:Content>

