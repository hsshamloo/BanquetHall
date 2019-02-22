<%@ Page Title="" Language="C#" MasterPageFile="~/BanquetMasterPage.master" AutoEventWireup="true"
    CodeFile="FoodReservation.aspx.cs" Inherits="FoodReservation" EnableEventValidation="false"%>
    <%@ Register Src="~/Controls/foodReservePart.ascx" TagName="foodReservePart" TagPrefix="uc2" %>
<%@ Register src="../Controls/foodChose.ascx" tagname="foodChose" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../App_Themes/StyleSheet1.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="MainPage">
        <div class="MainPageTitle">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Image/foodReseveTitle.png" />
        </div>
        <div class="MainPageContent" style="width: 900px; float: left; left: 10px">
            <div class="HalfLeftMainPageContent">
                <div class="HalfLeftMainPageContentChildUp">
                    <asp:Panel ID="PanelBill" runat="server" Height="350px" ScrollBars="Auto">
                        <asp:GridView ID="GridView1" runat="server" 
    DataSourceID="LinqDataSource1" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" 
                            BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="FoodOrderID" 
                            ForeColor="Black" GridLines="None" style="float: right" 
                            onrowdeleted="GridView1_RowDeleted">
                            <AlternatingRowStyle BackColor="PaleGoldenrod" />
                            <Columns>
                                <asp:TemplateField HeaderText="قیمت کل" SortExpression="Price">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# 
                                        Bind("Price") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%#
                                        Convert.ToInt32((Eval("Price")))
                                          %>'></asp:Label>
                                    </ItemTemplate>
                                    <HeaderStyle HorizontalAlign="Right" />
                                    <ItemStyle Width="100px" />
                                </asp:TemplateField>
                                <asp:BoundField DataField="Count" HeaderText="تعداد" SortExpression="Count" >
                                <HeaderStyle HorizontalAlign="Right" />
                                </asp:BoundField>
                                <asp:BoundField DataField="FoodName" HeaderText="نام غذا" 
                                    SortExpression="FoodName" >
                                <HeaderStyle HorizontalAlign="Right" />
                                <ItemStyle Width="150px" />
                                </asp:BoundField>
                                <asp:CommandField ShowDeleteButton="True" DeleteText="حذف" >
                                    <ItemStyle Width="50px" />
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
                        TableName="FoodOrderTables" Where="ReservationId == @ReservationId1">
                        <WhereParameters>
                            <asp:SessionParameter Name="ReservationId1" SessionField="ReserveId" 
                                Type="String" />
                        </WhereParameters>
                    </asp:LinqDataSource>
                    <div class="HalfleftMainPageContentChildDownChildMain">
                    <div class = "HalfLeftMainPageContentChildDownChildLeft">
                    
                        <asp:Label ID="hallReserveCostLb" runat="server" style="color: #FFFFCC"></asp:Label>
                    
                    </div>
                    <div class = "HalfLeftMainPageContentChildDownChildRight">
                    :هزینه تالار
                    </div>
                    </div>
                    <div class="HalfleftMainPageContentChildDownChildMain">
                    <div class = "HalfLeftMainPageContentChildDownChildLeft">
                    
                        <asp:Label ID="foodPriceLb" runat="server" style="color: #FFFFCC"></asp:Label>
                    
                    </div>
                    <div class = "HalfLeftMainPageContentChildDownChildRight">
                    :هزینه خوراک 
                    </div>
                    </div>
                    
                    <div class="HalfleftMainPageContentChildDownChildMain">
                    <div class = "HalfLeftMainPageContentChildDownChildLeft">
                    
                        <asp:Label ID="overalCostLb" runat="server" style="color: #FFFFCC"></asp:Label>
                    
                    </div>
                    <div class = "HalfLeftMainPageContentChildDownChildRight">
                    
                    :هزینه ی کل </div>
                    </div>
                    <div class="HalfleftMainPageContentChildDownChildMain">
                    <div class = "HalfLeftMainPageContentChildDownChildLeft">
                    
                        <asp:ImageButton ID="finalReserveBtn" runat="server" 
                            ImageUrl="~/Image/endReserve.png" onclick="finalReserveBtn_Click" 
                            CausesValidation="False" />
                    
                    </div>
                    <div class = "HalfLeftMainPageContentChildDownChildRight">
                    
                     </div>
                    </div>
                </div>
            </div>

            <div class="HalfRightMainPageContent" style="width: 466px">
                
                    <uc1:foodChose ID="foodChose1" runat="server" />
                
                

            </div>
        </div>
    </div>
</asp:Content>
