<%@ Page Title="" Language="C#" MasterPageFile="~/BanquetMasterPage.master" AutoEventWireup="true" CodeFile="OrderNewItem.aspx.cs" Inherits="OrderNewItem" EnableEventValidation="false"%>

<%@ Register src="../Controls/ItemOrderPartControl.ascx" tagname="ItemOrderPartControl" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../App_Themes/StyleSheet1.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="MainPage">
        <div class="MainPageTitle">
            <asp:Image ID="Image1" runat="server" 
                ImageUrl="~/Image/orderNewItemTitel.png" />
        </div>
        <div class="MainPageContent" style="width: 900px; float: left; left: 10px">
            <div class="HalfLeftMainPageContent">
                <div class="HalfLeftMainPageContentChildUp">
                    <asp:Panel ID="PanelBill" runat="server" Height="350px" ScrollBars="Auto">
                        <asp:GridView ID="GridView1" runat="server" 
    DataSourceID="LinqDataSource1" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" 
                            BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="ItemOrderID" 
                            ForeColor="Black" GridLines="None" style="float: right" AllowPaging="True" 
                            PageSize="5">
                            <AlternatingRowStyle BackColor="PaleGoldenrod" />
                            <Columns>
                                <asp:BoundField DataField="Count" HeaderText="تعداد" SortExpression="Count">
                                <HeaderStyle HorizontalAlign="Right" />
                                <ItemStyle Width="100px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="ItemName" HeaderText="نام کالا" 
                                    SortExpression="ItemName" >
                                <HeaderStyle HorizontalAlign="Right" />
                                <ItemStyle Width="214px" />
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
                    </asp:Panel>
                </div>
                <div class="HalfLeftMainPageContentChildDown">
                
                    <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="DataClassesDataContext"
                        EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntityTypeName=""
                        TableName="ItemOrderInfoTables" Where="SubmitDate == @SubmitDate1">
                        <WhereParameters>
                            <asp:SessionParameter Name="SubmitDate1" SessionField="DateOfNow" 
                                Type="DateTime" />
                        </WhereParameters>
                    </asp:LinqDataSource>
                    <div class="HalfleftMainPageContentChildDownChildMain">
                    <div class = "HalfLeftMainPageContentChildDownChildLeft">
                    
                    </div>
                    <div class = "HalfLeftMainPageContentChildDownChildRight">
                    &nbsp;</div>
                    </div>
                    
                    
                    
                    <div class="HalfleftMainPageContentChildDownChildMain">
                    <div class = "HalfLeftMainPageContentChildDownChildLeft">
                    
                        <asp:ImageButton ID="finalReserveBtn" runat="server" 
                            ImageUrl="~/Image/endReserve.png" onclick="finalReserveBtn_Click" />
                    
                    </div>
                    <div class = "HalfLeftMainPageContentChildDownChildRight">
                    
                     </div>
                    </div>
                </div>
            </div>

            <div class="HalfRightMainPageContent" style="width: 466px">
                
               

                <uc1:ItemOrderPartControl ID="ItemOrderPartControl1" runat="server" />
                
               

            </div>
        </div>
    </div>
</asp:Content>

