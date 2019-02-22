<%@ Page Title="" Language="C#" MasterPageFile="~/BanquetMasterPage.master" AutoEventWireup="true" CodeFile="AllFinancialReport.aspx.cs" Inherits="AllFinancialReport" EnableEventValidation="false"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../App_Themes/StyleSheet1.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="MainPage">
        <div class="MainPageTitle">
        
            <asp:Image ID="Image1" runat="server" 
                ImageUrl="~/Image/financalReportTitel.png" />
        
        </div>
        <div class="MainPageContent" >
           <div class="HalfLeftMainPageContentChildDown" style="height :160px ;float:right">
               <asp:HyperLink ID="HPToPendingReserveInfo" runat="server" 
                   Font-Underline="False" ForeColor="White">لیست فاکتورهای بدهکار</asp:HyperLink>
               <br />
               <asp:HyperLink ID="HyperLink3" runat="server" Font-Underline="False" 
                   ForeColor="#FFFF99" 
                   style="color: #FFFFCC">لیست فاکتورهای تسویه شده</asp:HyperLink>
                   <br />
               <asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="False" 
                   ForeColor="#FFFF99" 
                   style="color: #FFFF99">بررسی تراز مالی مجتمع</asp:HyperLink>
               <br />
               
             
                <asp:HyperLink ID="HyperLink2" runat="server" Font-Strikeout="False" 
                   Font-Underline="False" 
                   style="color: #FFFF66">گزارش مالی بر اساس نام مشتری</asp:HyperLink>
                <br />
                
                
                
                </div>
            <asp:Panel ID="Panel2" runat="server" Height="453px" Width="801px" 
                 CssClass="panelStyle" >
                <asp:GridView ID="GridView1" runat="server" 
    BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
    CellPadding="2" ForeColor="Black" GridLines="None" AllowPaging="True" 
                    AutoGenerateColumns="False" DataKeyNames="BillId" 
                    DataSourceID="LinqDataSource1" PageSize="6" style="font-size: medium">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <Columns>
                        <asp:BoundField DataField="ClearanceDate" HeaderText="تاریخ تسویه" 
                            SortExpression="ClearanceDate" />
                        <asp:BoundField DataField="StatusOfBill" HeaderText="وضعیت" 
                            SortExpression="StatusOfBill" />
                        <asp:BoundField DataField="RemainedAmount" HeaderText="باقی مانده" 
                            SortExpression="RemainedAmount" />
                        <asp:BoundField DataField="AmountPaid" HeaderText=" پرداختی" 
                            SortExpression="AmountPaid" />
                        <asp:BoundField DataField="TotalCharge" HeaderText="هزینه نهایی" 
                            SortExpression="TotalCharge" />
                        <asp:BoundField DataField="FoodCharge" HeaderText="هزینه غذا" 
                            SortExpression="FoodCharge" />
                        <asp:BoundField DataField="ReserveCharge" HeaderText="هزینه تالار" 
                            SortExpression="ReserveCharge" />
                        <asp:BoundField DataField="Email" HeaderText="ایمیل مشتری" 
                            SortExpression="Email" />
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
            </asp:Panel>
            <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
                ContextTypeName="DataClassesDataContext" EnableDelete="True" 
                EnableInsert="True" EnableUpdate="True" EntityTypeName="" 
                TableName="BillTables" AutoGenerateOrderByClause="True">
            </asp:LinqDataSource>
        </div>
    </div>
</asp:Content>

