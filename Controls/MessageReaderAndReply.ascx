<%@ Control Language="C#" AutoEventWireup="true" CodeFile="MessageReaderAndReply.ascx.cs"
    Inherits="Controls_MessageReaderAndReply" %>
<link href="../App_Themes/StyleSheet1.css" rel="stylesheet" type="text/css" />
<div class="Parent">
    <div class="fieldNormal">
        <div class="LeftChild">
        </div>
        <div class="MiddelChild">
            <asp:Label ID="MessageSenderLb" runat="server" style="color: #FFFFCC"></asp:Label>
        </div>
        <div class="RightChild">
            :ارسال کننده</div>
    </div>
    <div class="fieldNormal">
        <div class="LeftChild">
        </div>
        <div class="MiddelChild">
            <asp:Label ID="MessageReciverLb" runat="server" style="color: #FFFFCC"></asp:Label>
        </div>
        <div class="RightChild">
            :دریافت کننده</div>
    </div>
    <div class="fieldNormal">
        <div class="LeftChild">
        </div>
        <div class="MiddelChild">
            <asp:Label ID="DateOfMessageLb" runat="server" style="color: #FFFFCC"></asp:Label>
        </div>
        <div class="RightChild">
            :تاریخ
        </div>
    </div>
    <div class="fieldNormal">
        <div class="LeftChild">
        </div>
        <div class="MiddelChild">
            <asp:Label ID="SubjectOfMessageLb" runat="server" style="color: #FFFFCC"></asp:Label>
        </div>
        <div class="RightChild">
            :موضوع پیام</div>
    </div>
    <div class="fieldNormal">
        <div class="LeftChild">
        </div>
        <div class="MiddelChild">
        </div>
        <div class="RightChild">
            :متن پیام</div>
    </div>
    <div style="position: relative; height: 165px; top: 0px; bottom: 10px; right: 155px;
        float: right; width: 674px; text-align: right;">
        <asp:TextBox ID="RecivedMessageContentTxt" runat="server" Height="165px" 
            TextMode="MultiLine" Width="510px" Font-Names="Tahoma" ReadOnly="True" 
            style="text-align: right; font-family: Tahoma; font-size: medium"></asp:TextBox>
    </div>
    
    <div class="fieldNormal">
        <div class="LeftChild">
        </div>
        <div class="MiddelChild">
        </div>
        <div class="RightChild">
            :پاسخ</div>
    </div>
    <div style="position: relative; height: 165px; top: 0px; bottom: 10px; right: 155px;
        float: right; width: 674px; text-align: right;">
        <asp:TextBox ID="MessageToSendTxt" runat="server" Height="165px" 
            TextMode="MultiLine" Width="510px" Font-Names="Tahoma" 
            style="text-align: right; font-family: Tahoma; font-size: medium"></asp:TextBox>
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
            <asp:Button ID="Button1" runat="server" BackColor="#FFCC00" 
                BorderColor="#FFCC00" onclick="Button1_Click" Text="بازگشت" />
        </div>
        <div class="MiddelChild">
            <asp:ImageButton ID="SentBtn" runat="server" 
                ImageUrl="~/Image/sendbtn.png" onclick="SentBtn_Click" />
        </div>
        <div class="RightChild">
            </div>
    </div>
</div>
</div> 