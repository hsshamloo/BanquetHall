<%@ Control Language="C#" AutoEventWireup="true" CodeFile="finalBillForm.ascx.cs"
    Inherits="Controls_finalBillForm" %>
<link href="../App_Themes/StyleSheet1.css" rel="stylesheet" type="text/css" />
<div class="Parent">
    <div class="fieldNormal">
        <div class="LeftChild">
        </div>
        <div class="MiddelChild">
            فاکتور نهایی</div>
        <div class="RightChild">
        </div>
    </div>
    <div class="fieldNormal">
        <div class="LeftChild">
        </div>
        <div class="MiddelChild">
            <asp:Label ID="costumerNameLb" runat="server" Style="color: #FFFFCC"></asp:Label>
        </div>
        <div class="RightChild">
            :نام مشتری</div>
    </div>
    <div class="fieldNormal">
        <div class="LeftChild">
        </div>
        <div class="MiddelChild">
            <asp:Label ID="billDateLb" runat="server" Style="color: #FFFFCC" Text="Label"></asp:Label>
        </div>
        <div class="RightChild">
            :تاریخ</div>
    </div>
    <div class="fieldNormal">
        <div class="LeftChild">
        </div>
        <div class="MiddelChild">
            اطلاعات تالار رزرو شده
        </div>
        <div class="RightChild">
        </div>
    </div>
    <div class="fieldNormal">
        <div class="LeftChild">
        </div>
        <div class="MiddelChild">
            <asp:Label ID="hallNameLb" runat="server" Style="color: #FFFFCC"></asp:Label>
        </div>
        <div class="RightChild">
            :نام تالار</div>
    </div>
    <div class="fieldNormal">
        <div class="LeftChild">
        </div>
        <div class="MiddelChild">
            <asp:Label ID="reserveDateLb" runat="server" Style="color: #FFFFCC"></asp:Label>
        </div>
        <div class="RightChild">
            :تاریخ مجلس</div>
    </div>
    <div class="fieldNormal">
        <div class="LeftChild">
        </div>
        <div class="MiddelChild">
            <asp:Label ID="hallChargeLb" runat="server" Style="color: #FFFFCC"></asp:Label>
        </div>
        <div class="RightChild">
            :هزینه تالار</div>
    </div>
    <div class="fieldNormal">
        <div class="LeftChild">
        </div>
        <div class="MiddelChild">
            اطلاعات خوراک های رزرو شده</div>
        <div class="RightChild">
        </div>
    </div>
    <div class="fieldNormal">
        <div class="LeftChild">
        </div>
        <div class="MiddelChild">
            <asp:HyperLink ID="reservedFoodHyperLink" runat="server" Style="color: #FFFFCC" Visible="False">[reservedFoodHyperLink]</asp:HyperLink>
        </div>
        <div class="RightChild">
            &nbsp;</div>
    </div>
    <div class="fieldNormal">
        <div class="LeftChild">
        </div>
        <div class="MiddelChild">
            <asp:Label ID="foodChargeLb" runat="server" Style="color: #FFFFCC"></asp:Label>
        </div>
        <div class="RightChild">
            :هزینه خوراک
        </div>
    </div>
    <div class="fieldNormal">
        <div class="LeftChild">
        </div>
        <div class="MiddelChild">
            <asp:Label ID="totalChargeLb" runat="server" Style="color: #FFFFCC"></asp:Label>
        </div>
        <div class="RightChild">
            :هزینه کل
        </div>
    </div>
    <div class="fieldNormal">
        <div class="LeftChild">
        </div>
        <div class="MiddelChild">
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal"
                Style="float: right; color: #FFFF99" 
                onselectedindexchanged="RadioButtonList1_SelectedIndexChanged" 
                AutoPostBack="True">
                <asp:ListItem Selected="True">نقدی</asp:ListItem>
                <asp:ListItem>چک</asp:ListItem>
            </asp:RadioButtonList>
        </div>
        <div class="RightChild">
            &nbsp;:نوع پرداخت</div>
    </div>
    <div class="fieldNormal" style="height: auto">
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                <div class="fieldNormal">
                    <div class="LeftChild">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="costToPayTxt"
                            ErrorMessage="مقدار صحیح وارد کنید" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
                    </div>
                    <div class="MiddelChild">
                        <asp:TextBox ID="costToPayTxt" runat="server" Width="200px"></asp:TextBox>
                    </div>
                    <div class="RightChild">
                        :مبلغ قابل پرداخت
                    </div>
                </div>
                <div class="fieldNormal">
                    <div class="LeftChild">
                    </div>
                    <div class="MiddelChild">
                        <asp:TextBox ID="codeToPay" runat="server" Width="200px"></asp:TextBox>
                    </div>
                    <div class="RightChild">
                        :کد پرداخت
                    </div>
                </div>
            </asp:View>
            <asp:View ID="View2" runat="server">
            <div class="fieldNormal">
                    <div class="LeftChild">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1"
                            ErrorMessage="مقدار صحیح وارد کنید" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
                    </div>
                    <div class="MiddelChild">
                        <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                    </div>
                    <div class="RightChild">
                        :مبلغ قابل پرداخت
                    </div>
                </div>
            <div class="fieldNormal">
                    <div class="LeftChild">
                    </div>
                    <div class="MiddelChild">
                        <asp:TextBox ID="ceckCode" runat="server" Width="200px"></asp:TextBox>
                    </div>
                    <div class="RightChild">
                        :کد پرداخت
                    </div>
                </div>
            </asp:View>
        </asp:MultiView>
    </div>
    <div class="fieldNormal">
        <div class="LeftChild">
        </div>
        <div class="MiddelChild">
            <asp:ImageButton ID="payBtn" runat="server" ImageUrl="~/Image/payBtn.png" OnClick="payBtn_Click" />
        </div>
        <div class="RightChild">
        </div>
    </div>
</div>
