<%@ Page Title="" Language="C#" MasterPageFile="~/BanquetMasterPage.master" AutoEventWireup="true" CodeFile="ReportAllReserveInformation.aspx.cs" Inherits="ReportAllReserveInformation" EnableEventValidation="false"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../App_Themes/StyleSheet1.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script type="text/C#" runat="server">
    ReceptionHalls rh = new ReceptionHalls();
    DataBaseConnection db = new DataBaseConnection();
    
</script>
<div class="MainPage">
        <div class="MainPageTitle">
        
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Image/PlacedReserve.png" />
        
        </div>
        <div class="MainPageContent" >
           <div class="HalfLeftMainPageContentChildDown" style="height :160px ;float:right; width:834px">
               <asp:HyperLink ID="HPToPendingReserveInfo" runat="server" 
                   Font-Underline="False" ForeColor="White">سفارش های تایید نشده</asp:HyperLink>
               <br />
               <asp:HyperLink ID="HyperLink3" runat="server" Font-Underline="False" 
                   ForeColor="#FFFF99" NavigateUrl="~/Manager/ReportReserveInNearDays.aspx" 
                   style="color: #FFFFCC">مراسم های پیش رو</asp:HyperLink>
               <br />
               <asp:HyperLink ID="HyperLink4" runat="server" style="color: #FFFF99" 
                   Font-Underline="False" 
                   NavigateUrl="~/Manager/ReportNewestResevePlacedInfo.aspx">جدیدترین سفارش های ثبت شده </asp:HyperLink>
               
               
               
                 <br />
               <asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="False" 
                   NavigateUrl="~/Manager/ReprtReserveByDate.aspx" style="color: #FFFF66">دسته بندی سفارش ها بر اساس تاریخ</asp:HyperLink>
               <br /> <asp:HyperLink ID="r" runat="server" Font-Underline="False" 
                   NavigateUrl="~/Manager/ReportReserveByHallName.aspx" 
                   style="color: #FFFF00">دسته بندی سفارش ها بر اساس نام تالار</asp:HyperLink>
                
                
                
                
                
                <br />
                <asp:HyperLink ID="HyperLink2" runat="server" Font-Strikeout="False" 
                   Font-Underline="False" NavigateUrl="~/Manager/ReprtReserveByEmail.aspx" 
                   style="color: #FFCC00">دسته بندی سفارش ها بر اساس نام مشتری</asp:HyperLink>
                <br />
                </div>
                <div style="position: relative ; top:10px; height:30px">
                <div style ="position: relative ; width: auto; float: right; margin-left: 10px">
                دسته بندی براساس وضعیت سفارش
                </div>
                <div style ="position: relative ; width: auto; float: right">
                    <asp:DropDownList ID="statusOfReserveDrop" runat="server" 
                        CssClass="comboBoxPersian" Width="150px" AutoPostBack="True">
                        <asp:ListItem Selected="True">معلق</asp:ListItem>
                        <asp:ListItem>تایید مدیریت</asp:ListItem>
                        <asp:ListItem>انصرافی</asp:ListItem>
                    </asp:DropDownList>
                </div>
                </div>
            <div style="position: relative; top:30px; left:0px; width:834px">
                <asp:Panel ID="Panel1" runat="server">
                
                    <asp:GridView ID="GridView1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan"
                        BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" AllowPaging="True"
                        AutoGenerateColumns="False" DataKeyNames="ReservationId" DataSourceID="LinqDataSource1"
                        PageSize="6" AllowSorting="True">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <Columns>
                        <asp:TemplateField HeaderText="تاریخ ثبت" SortExpression="SubmitDate">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("SubmitDate") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%#db.toPersianDate(Convert.
                     ToDateTime((Eval(Convert.ToString("SubmitDate")))))  %>'>
                     </asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Right" />
                            <ItemStyle Width="75px" />
                        </asp:TemplateField>
                        <asp:BoundField DataField="StatusOfReserve" HeaderText="وضعیت سفارش" 
                            SortExpression="StatusOfReserve">
                        <HeaderStyle HorizontalAlign="Right" />
                        <ItemStyle Width="150px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="TypeOfParty" HeaderText="نوع مراسم" 
                            SortExpression="TypeOfParty">
                        <HeaderStyle HorizontalAlign="Right" />
                        <ItemStyle Width="150px" />
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="هزینه تالار" SortExpression="PriceOfReserv">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("PriceOfReserv") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Convert.ToInt32(Eval("PriceOfReserv")) %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Right" />
                            <ItemStyle Width="100px" />
                        </asp:TemplateField>
                        <asp:BoundField DataField="NumberOfGuest" HeaderText="تعداد مهمان" 
                            SortExpression="NumberOfGuest">
                        <HeaderStyle HorizontalAlign="Right" />
                        <ItemStyle Width="100px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="CostumerName" HeaderText="نام مشتری" 
                            SortExpression="CostumerName">
                        <HeaderStyle HorizontalAlign="Right" />
                        <ItemStyle Width="150px" />
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="تاریخ مراسم" SortExpression="ReserveDate">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("ReserveDate") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%#db.toPersianDate(Convert.
                     ToDateTime((Eval(Convert.ToString("ReserveDate")))))  %>'>
                     </asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Right" />
                            <ItemStyle Width="100px" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="نام تالار" SortExpression="ReHallId">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ReHallId") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" 
                                    Text='<%#rh.retriveHallNameByHallId(Convert.ToString(Eval(Convert.ToString("ReHallId"))))%>'>
                                </asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Right" />
                            <ItemStyle Width="70px" />
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
                </asp:Panel>
           </div>
           <div style="position: relative; top: 52px; left: 0px">
            <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
                ContextTypeName="DataClassesDataContext" EnableDelete="True" 
                EnableInsert="True" EnableUpdate="True" EntityTypeName="" OrderBy="ReserveDate" 
                TableName="ReservationTables" Where="StatusOfReserve == @StatusOfReserve">
                <WhereParameters>
                    <asp:ControlParameter ControlID="statusOfReserveDrop" Name="StatusOfReserve" 
                        PropertyName="SelectedValue" Type="String" />
                </WhereParameters>
            </asp:LinqDataSource>
            </div>
        </div>
    </div>
</asp:Content>

