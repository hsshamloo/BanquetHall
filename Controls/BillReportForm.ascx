<%@ Control Language="C#" AutoEventWireup="true" CodeFile="BillReportForm.ascx.cs"
    Inherits="Controls_BillReportForm" %>
<link href="../App_Themes/StyleSheet1.css" rel="stylesheet" type="text/css" />
<div class="HalfLeftMainPageContent" style="height: auto; float: right; right: 30px">
    <div class="HalfMainField">
    </div>
    <div class="HalfMainField">
        <div class="MiddelChild">
            <asp:Label ID="biilIdLb" runat="server" Style="color: #FFFFCC"></asp:Label>
        </div>
        <div class="RightChild">
            :کد فاکتور</div>
    </div>
    <div class="HalfMainField">
        <div class="MiddelChild">
            <asp:Label ID="submitDateBillLb" runat="server" Style="color: #FFFFCC"></asp:Label>
        </div>
        <div class="RightChild">
            : تاریخ صدور
        </div>
    </div>
    <div class="HalfMainField">
        <div class="MiddelChild">
            <asp:Label ID="costumerNameLb" runat="server" Style="color: #FFFFCC"></asp:Label>
        </div>
        <div class="RightChild">
            :نام مشتری</div>
    </div>
    <div class="HalfMainField">
        <div class="MiddelChild">
            <asp:Label ID="hallChargeLb" runat="server" Style="color: #FFFFCC"></asp:Label>
        </div>
        <div class="RightChild">
            :هزینه تالار</div>
    </div>
    <div class="HalfMainField">
        <div class="MiddelChild">
            <asp:Label ID="foodChargeLb" runat="server" Style="color: #FFFFCC"></asp:Label>
        </div>
        <div class="RightChild">
            :هزینه غذا</div>
    </div>
    <div class="HalfMainField">
        <div class="MiddelChild">
            <asp:Label ID="totalPriceLb" runat="server" Style="color: #FFFFCC"></asp:Label>
        </div>
        <div class="RightChild">
            :هزینه نهایی</div>
    </div>
    <div class="HalfMainField">
        <div class="MiddelChild">
            <asp:Label ID="amountPaidLb" runat="server" Style="color: #FFFFCC"></asp:Label>
        </div>
        <div class="RightChild">
            :مبلغ پرداختی</div>
    </div>
    <div class="HalfMainField">
        <div class="MiddelChild">
            <asp:Label ID="remainedAmountLb" runat="server" Style="color: #FFFFCC"></asp:Label>
        </div>
        <div class="RightChild">
            :مبلغ باقیمانده</div>
    </div>
    <div class="HalfMainField">
        <div class="MiddelChild">
            <asp:Label ID="billStatusLb" runat="server" Style="color: #FFFFCC"></asp:Label>
        </div>
        <div class="RightChild">
            :وضعیت نهایی</div>
    </div>
    <div class="HalfMainField">
        <div class="MiddelChild">
            <asp:Label ID="payTypeLb" runat="server" Style="color: #FFFFCC"></asp:Label>
        </div>
        <div class="RightChild">
            :نوع پرداخت</div>
    </div>
    <div class="HalfMainField">
        <div class="MiddelChild">
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                RepeatDirection="Horizontal" AutoPostBack="True" 
                onselectedindexchanged="RadioButtonList1_SelectedIndexChanged" 
                style="float: right" Visible="False">
                <asp:ListItem>اتمام و پرداخت نهایی</asp:ListItem>
                <asp:ListItem Selected="True">تایید </asp:ListItem>
            </asp:RadioButtonList>
        </div>
        <div class="RightChild">
            <asp:Label ID="choseOpration" runat="server" Text=":انتخاب نوع اقدام" 
                Visible="False"></asp:Label>
        </div>
    </div>
    <div class="HalfMainField" style="height: auto">
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                <div class="HalfMainField">
                    <div class="MiddelChild">
                        <asp:TextBox ID="finalPayTxt" runat="server" ReadOnly="True"></asp:TextBox>
                    </div>
                    <div class="RightChild">
                        :پرداخت نهایی</div>
                </div>
                <div class="HalfMainField">
                    <div class="MiddelChild" style="width: 420px">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="finalPayTxt"
                            ErrorMessage="مقدار صحیح وارد کنید" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
                        &nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="مبلغ را وارد کنید"
                            ControlToValidate="finalPayTxt"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="HalfMainField">
                    <div class="MiddelChild">
                        <asp:Button ID="acceptBtn" runat="server" BackColor="#FFCC00" BorderColor="#FFCC00"
                            OnClick="acceptBtn_Click" Text="پرداخت" Width="112px" />
                    </div>
                    <div class="RightChild">
                    </div>
                </div>
            </asp:View>
            <asp:View ID="View2" runat="server">
            <div class="HalfMainField">
                    <div class="MiddelChild">
                        <asp:Button ID="Button1" runat="server" BackColor="#FFCC00" BorderColor="#FFCC00"
                            OnClick="Button1_Click" Text="تایید مدیریت" Width="112px" />
                    </div>
                    <div class="RightChild">
                    </div>
                </div>
            </asp:View>
            <asp:View ID="View3" runat="server">
            <div class="HalfMainField">
                    <div class="MiddelChild">
                        <asp:Button ID="Button2" runat="server" BackColor="#FFCC00" BorderColor="#FFCC00"
                            OnClick="Button2_Click" Text="پایان مراسم" Width="112px" />
                    </div>
                    <div class="RightChild">
                    </div>
                </div>
            </asp:View>
        </asp:MultiView>
    </div>
</div>
