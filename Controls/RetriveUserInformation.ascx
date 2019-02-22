<%@ Control Language="C#" AutoEventWireup="true" CodeFile="RetriveUserInformation.ascx.cs"
    Inherits="Controls_RetriveUserInformation" %>
<%@ Register assembly="Heidarpour.WebControlUI" namespace="Heidarpour.WebControlUI" tagprefix="rhp" %>
<link href="../App_Themes/StyleSheet1.css" rel="stylesheet" type="text/css" />
<div class="Parent">
    <script type="text/C#" runat="server">
        DataBaseConnection db = new DataBaseConnection();
        public string addressMaker(string queryString)
        {
            string message = "~/Manager/UserInformation.aspx?UserEmail=" + queryString;
            return message;
        }
        public string removePartOfString(string message)
        {
            string messageAfterRemove = message;
            if (message.Length > 40)
            {
                messageAfterRemove = "..." + message.Remove(30);
            }
            return messageAfterRemove;
        }
    
    </script>
    <div class="fieldNormal">
        <div class="LeftChild">
        </div>
        <div class="MiddelChild">
            <asp:DropDownList ID="DropDownList1" runat="server" 
                onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                AutoPostBack="True">
                <asp:ListItem Value="Date">بر اساس تاریخ عضویت</asp:ListItem>
                <asp:ListItem Value="Name">براساس نام </asp:ListItem>
                <asp:ListItem Value="All">تمام کاربران</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="RightChild">
            :نمایش کاربر</div>
    </div>
    <div class="fieldNormal" style="height: auto">
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                <div class="fieldNormal">
                    <div class="LeftChild">
                    </div>
                    <div class="MiddelChild">
                        <asp:TextBox ID="fNameTxt" runat="server" style="text-align: right"></asp:TextBox>
                    </div>
                    <div class="RightChild">
                        :نام
                    </div>
                </div>
                <div class="fieldNormal">
                    <div class="LeftChild">
                    </div>
                    <div class="MiddelChild">
                        <asp:TextBox ID="lNameTxt" runat="server" Font-Names="Tahoma" 
                            style="text-align: right"></asp:TextBox>
                    </div>
                    <div class="RightChild">
                        :نام خانوادگی</div>
                </div>
                <div class="fieldNormal">
                    <div class="LeftChild">
                    </div>
                    <div class="MiddelChild">
                        <asp:Button ID="SearchNameBtn" runat="server" BackColor="#FFCC00" 
                            BorderColor="#FFCC00" Text="جستجو" onclick="SearchNameBtn_Click" />
                    </div>
                    <div class="RightChild">
                    </div>
                </div>
            </asp:View>
            <asp:View ID="View2" runat="server">
               <div class="fieldNormal">
                    <div class="LeftChild">
                    </div>
                    <div class="MiddelChild">
                        <rhp:DatePicker ID="DatePicker1" runat="server"></rhp:DatePicker>
                    </div>
                    <div class="RightChild">
                        :از تاریخ
                    </div>
                </div>
                <div class="fieldNormal">
                    <div class="LeftChild">
                    </div>
                    <div class="MiddelChild">
                        <rhp:DatePicker ID="DatePicker2" runat="server"></rhp:DatePicker>
                    </div>
                    <div class="RightChild">
                        :تا تاریخ</div>
                </div>
                <div class="fieldNormal">
                    <div class="LeftChild">
                    </div>
                    <div class="MiddelChild">
                        <asp:Button ID="Button1" runat="server" BackColor="#FFCC00" 
                            BorderColor="#FFCC00" Text="جستجو" onclick="Button1_Click" />
                    </div>
                    <div class="RightChild">
                    </div>
                </div>
            </asp:View>
        </asp:MultiView>
    </div>
    <div class="fieldNormal" style="height:auto; overflow:auto; text-align:right; max-height:250px">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="2" ForeColor="Black" GridLines="None"
            Height="51px" Width="798px" DataKeyNames="Email" 
            Style="text-align: right; height: 250px; overflow: auto; float: none;" BackColor="LightGoldenrodYellow"
            BorderColor="Tan" BorderWidth="1px" PageSize="5">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:TemplateField HeaderText="تاریخ عضویت" SortExpression="RegisterDate">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%#db.toPersianDate(Convert.
                     ToDateTime((Eval(Convert.ToString("RegisterDate")))))  %>'>
                        </asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("RegisterDate") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <HeaderStyle HorizontalAlign="Right" />
                    <ItemStyle Width="100px" />
                </asp:TemplateField>
                <asp:BoundField DataField="RoleType" HeaderText="نقش کاربری" SortExpression="RoleType">
                    <HeaderStyle HorizontalAlign="Right" />
                    <ItemStyle Width="100px" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="ایمیل" SortExpression="Email">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#
                                addressMaker(Eval("Email").ToString())
                                 %>' Text='<%# 
                                removePartOfString(Eval("Email").ToString()) %>'>
                        </asp:HyperLink>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Right" />
                    <ItemStyle Width="100px" />
                </asp:TemplateField>
                <asp:BoundField DataField="LName" HeaderText="نام خانوادگی" SortExpression="LName">
                    <HeaderStyle HorizontalAlign="Right" />
                    <ItemStyle Width="150px" />
                </asp:BoundField>
                <asp:BoundField DataField="FName" HeaderText="نام" SortExpression="FName">
                    <HeaderStyle HorizontalAlign="Right" />
                    <ItemStyle Width="100px" />
                </asp:BoundField>
                <asp:CommandField ButtonType="Image" DeleteImageUrl="~/Image/Delete-icon.png" SelectImageUrl="~/Image/SelectForTable.png"
                    ShowDeleteButton="True" UpdateImageUrl="~/Image/product_updates_image.png">
                    <ControlStyle Height="35px" Width="35px" />
                <ItemStyle Width="50px" />
                </asp:CommandField>
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
        </div>
    
    <div class="fieldNormal">
        <div class="LeftChild" style="width:auto">
            <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="DataClassesDataContext"
                EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntityTypeName=""
                TableName="MembershipTables" Where="RoleType != @RoleType" OrderBy="RegisterDate desc">
                <WhereParameters>
                    <asp:Parameter DefaultValue="مدیر" Name="RoleType" Type="String" />
                </WhereParameters>
            </asp:LinqDataSource>
        </div>
        <div class="MiddelChild" >
            <asp:LinqDataSource ID="LinqDataSource2" runat="server" 
                ContextTypeName="DataClassesDataContext" EntityTypeName="" 
                TableName="MembershipTables" 
                
                
                Where="RegisterDate &gt;= @RegisterDate &amp;&amp; RegisterDate &lt;= @RegisterDate1 &amp;&amp; RoleType != @RoleType" 
                EnableDelete="True" EnableInsert="True" EnableUpdate="True">
                <WhereParameters>
                    <asp:ControlParameter ControlID="DatePicker1" DefaultValue="" 
                        Name="RegisterDate" PropertyName="Date" Type="DateTime" />
                    <asp:ControlParameter ControlID="DatePicker2" Name="RegisterDate1" 
                        PropertyName="Date" Type="DateTime" />
                    <asp:Parameter DefaultValue="مدیر" Name="RoleType" Type="String" />
                </WhereParameters>
            </asp:LinqDataSource>
        </div>
        <div class="RightChild" style="width:auto">
            <asp:LinqDataSource ID="LinqDataSource3" runat="server" 
                ContextTypeName="DataClassesDataContext" EnableDelete="True" 
                EnableInsert="True" EnableUpdate="True" EntityTypeName="" 
                TableName="MembershipTables" Where="FName == @FName &amp;&amp; LName == @LName">
                <WhereParameters>
                    <asp:ControlParameter ControlID="fNameTxt" Name="FName" PropertyName="Text" 
                        Type="String" />
                    <asp:ControlParameter ControlID="lNameTxt" Name="LName" PropertyName="Text" 
                        Type="String" />
                </WhereParameters>
            </asp:LinqDataSource>
        </div>
    </div>
</div>
