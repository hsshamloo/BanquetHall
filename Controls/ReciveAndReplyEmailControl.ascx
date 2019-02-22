<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ReciveAndReplyEmailControl.ascx.cs"
    Inherits="Controls_ReciveAndReplyEmailControl" %>
<link href="../App_Themes/StyleSheet1.css" rel="stylesheet" type="text/css" />
<div class="Parent">
    <script type="text/C#" runat="server">
        ReceptionHalls rh = new ReceptionHalls();
        DataBaseConnection db = new DataBaseConnection();

        public string removePartOfString(string message)
        {
            string messageAfterRemove = message;
            if (message.Length > 40)
            {
                messageAfterRemove = "..." + message.Remove(30);
            }
            return messageAfterRemove;
        }
        public string addressMaker(string messageId)
        {
            string message = "~/MessageReader.aspx?MessageId=" + messageId;
            return message;
        }
        
    </script>
    
    <div class="fieldNormal">
        <div class="LeftChild">
        </div>
        <div class="MiddelChild">
            <asp:DropDownList ID="DepartemantName" runat="server" Width="190px" 
                AutoPostBack="True" ondatabound="DepartemantName_DataBound" 
                ondatabinding="DepartemantName_DataBinding">
            </asp:DropDownList>
        </div>
        <div class="RightChild">
            : بخش گیرنده</div>
    </div>
    <div class="fieldNormal">
        <div class="LeftChild">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="SubjectOfMessageTxt" ErrorMessage="موضوع پیام را وارد کنید"></asp:RequiredFieldValidator>
        </div>
        <div class="MiddelChild">
            *<asp:TextBox 
                ID="SubjectOfMessageTxt" runat="server" MaxLength="30" 
                style="text-align: right; font-size: medium; font-family: Tahoma"></asp:TextBox>
        </div>
        <div class="RightChild">
            : موضوع پیام</div>
    </div>
    <div class="fieldNormal">
        <div class="LeftChild">
        </div>
        <div class="MiddelChild">
        </div>
        <div class="RightChild">
            :متن پیام</div>
    </div>
    <div class="fieldNormal" style="height: 160px;">
        <div class="LeftChild" style="height: 150px; width:231px; left: 0px;">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="ContentOfMessageTxt" 
                ErrorMessage="متن پیام را وارد کنید"></asp:RequiredFieldValidator>
        </div>
        <div class="MiddelChild" style="height: 150px; width:442px">
            *<asp:TextBox 
                ID="ContentOfMessageTxt" runat="server" Height="149px"  
            style="font-size: medium; font-family: Tahoma;" TextMode="MultiLine" 
                Width="420px"></asp:TextBox>
        </div>
        <div class="RightChild">
        </div>
    </div>
    <div class="fieldNormal">
        <div class="LeftChild">
            <asp:HiddenField ID="HiddenField1" runat="server" />
        </div>
        <div class="MiddelChild">
            <asp:ImageButton ID="ImageButton1" runat="server" 
                ImageUrl="~/Image/sendbtn.png" onclick="ImageButton1_Click" />
        </div>
        <div class="RightChild">
        </div>
    </div>
    <div class="fieldNormal">
        <div class="LeftChild">
        </div>
        <div class="MiddelChild">
        </div>
        <div class="RightChild">
        </div>
    </div>
    <div class="fieldNormal">
        <div class="LeftChild">
        </div>
        <div class="MiddelChild">
                    <asp:DropDownList ID="typeofMessageDropDown" runat="server"
                         AutoPostBack="True" OnSelectedIndexChanged="typeofMessageDropDown_SelectedIndexChanged"
                        OnDataBound="typeofMessageDropDown_DataBound">
                    </asp:DropDownList>
        </div>
        <div class="RightChild">
        &nbsp;:انتخاب صندوق</div>
    </div>
    <div class="fieldNormal" style="height: 220px;">
        <div class="RightChild" style="height: 190px; width: 814px; text-align: right;
        overflow: auto ; padding-right:20px;">
        <asp:GridView ID="GridView1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan"
                    BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" Style="float: right;
                    font-size: medium;" AutoGenerateColumns="False"
                    PageSize="5" ondatabound="GridView1_DataBound" 
                onpageindexchanged="GridView1_PageIndexChanged" 
                onpageindexchanging="GridView1_PageIndexChanging" 
                ondatabinding="GridView1_DataBinding">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <Columns>
                        <asp:BoundField DataField="StatusOfMessage" HeaderText="وضعیت" SortExpression="StatusOfMessage">
                            <HeaderStyle HorizontalAlign="Right" />
                            <ItemStyle HorizontalAlign="Right" Width="50px" />
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="تاریخ صدور" SortExpression="SendDate">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("SendDate") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%#
                                db.toPersianDate(Convert.
                     ToDateTime((Eval(Convert.ToString("SendDate")))))
                                 %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Right" />
                            <ItemStyle Width="150px" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="متن پیام" SortExpression="MessageText">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("MessageText") %>'>
                                </asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#
                                addressMaker(Eval("MessageId").ToString())
                                 %>' Text='<%# 
                                removePartOfString(Eval("MessageText").ToString()) %>'>
                                </asp:HyperLink>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Right" />
                            <ItemStyle Width="150px" />
                        </asp:TemplateField>
                        <asp:BoundField DataField="Subject" HeaderText="موضوع" SortExpression="Subject">
                            <HeaderStyle HorizontalAlign="Right" />
                            <ItemStyle Width="100px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="MessageReciver" HeaderText="دریافت کننده" SortExpression="MessageReciver">
                            <HeaderStyle HorizontalAlign="Right" />
                            <ItemStyle HorizontalAlign="Right" Width="150px" />
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="ایمیل فرستنده" SortExpression="Email">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("EmailOfSender") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("EmailOfSender") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Right" />
                            <ItemStyle Width="150px" />
                        </asp:TemplateField>
                        <asp:BoundField DataField="MessageSender" HeaderText="فرستنده" 
                            SortExpression="MessageSender">
                            <HeaderStyle HorizontalAlign="Right" />
                            <ItemStyle Width="100px" />
                        </asp:BoundField>
                    </Columns>
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" HorizontalAlign="Right" />
                    <PagerSettings Mode="NextPrevious" Visible="False" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <SortedAscendingCellStyle BackColor="#FAFAE7" />
                    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                    <SortedDescendingCellStyle BackColor="#E1DB9C" />
                    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                </asp:GridView>
        </div>
        
    </div>
    <div class="fieldNormal">
        <div class="LeftChild" style="text-align: right">
        
            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="&lt;" 
                Visible="False" CausesValidation="False" />
        
        </div>
        <div class="MiddelChild" style="text-align: left">
        
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="&gt;" 
                Visible="False" CausesValidation="False" />
        
        </div>
        <div class="RightChild">
        
        </div>
        </div>
    <div class="fieldNormal">
        <div class="LeftChild">
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="DataClassesDataContext"
                    EnableDelete="True" EntityTypeName="" TableName="MessageTables" 
                    Where="MessageSender == @MessageSender">
                    <WhereParameters>
                        <asp:ControlParameter ControlID="HiddenField1" Name="MessageSender" 
                            PropertyName="Value" Type="String" />
                    </WhereParameters>
                </asp:LinqDataSource>
        </div>
        <div class="MiddelChild">
        <asp:LinqDataSource ID="LinqDataSource2" runat="server" 
                    ContextTypeName="DataClassesDataContext" EnableDelete="True" EntityTypeName="" 
                    TableName="MessageTables" 
                    
                Where="MessageSender == @MessageSender &amp;&amp; MessageReciver == @MessageReciver">
                    <WhereParameters>
                        <asp:ControlParameter ControlID="typeofMessageDropDown" Name="MessageSender" 
                            PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="HiddenField1" Name="MessageReciver" 
                            PropertyName="Value" Type="String" />
                    </WhereParameters>
                </asp:LinqDataSource>
        </div>
        <div class="RightChild">
        </div>
    </div>
</div>
