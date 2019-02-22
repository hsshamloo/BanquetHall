<%@ Control Language="C#" AutoEventWireup="true" CodeFile="CompleteReserveInfoForUser.ascx.cs" Inherits="Controls_CompleteReserveInfoForUser" %>
<%@ Register src="~/Controls/ShowHallTitle.ascx" tagname="ShowHallTitle" tagprefix="uc1" %>
<link href="../App_Themes/StyleSheet1.css" rel="stylesheet" type="text/css" />
<div class="Parent">
    <div class="fieldNormal">
        <div class="LeftChild">
        </div>
        <div class="MiddelChild">
            <asp:Label ID="UserMemberNameLb" runat="server" style="color: #FFFFCC"></asp:Label>
        </div>
        <div class="RightChild">
            
            :نام کاربر</div>
    </div>
    <div class="fieldNormal">
        <div class="LeftChild">
        </div>
        <div class="MiddelChild">
            <asp:Label ID="UserEmailb" runat="server" style="color: #FFFFCC"></asp:Label>
        </div>
        <div class="RightChild">
            
            : ایمیل کاربر</div>
    </div>
    <div class="fieldNormal">
        <div class="LeftChild">
        </div>
        <div class="MiddelChild">
            <asp:Label ID="NumberOfGuestLb" runat="server" style="color: #FFFFCC"></asp:Label>
        </div>
        <div class="RightChild">
            
            : تعداد مهمان ها</div>
    </div>
    <div class="fieldNormal">
        <div class="LeftChild">
        </div>
        <div class="MiddelChild">
            <asp:Label ID="reserveDateLb" runat="server" style="color: #FFFFCC"></asp:Label>
        </div>
        <div class="RightChild">
            
            : تاریخ مجلس</div>
    </div>
    
    <div class="fieldNormal">
        <div class="LeftChild">
        </div>
        <div class="MiddelChild">
            <asp:Label ID="cermonyTypeLb" runat="server" style="color: #FFFFCC" 
                Text="Label"></asp:Label>
        </div>
        <div class="RightChild">
            :نوع مراسم</div>
        
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
        </div>
        <div class="RightChild">
           اطلاعات تالار </div>
        
    </div>
    <div>
        <asp:Panel ID="Panel1" runat="server">
        <uc1:ShowHallTitle ID="ShowHallTitle1" runat="server" />
        </asp:Panel>

    </div>
    <div class="fieldNormal">
        <div class="LeftChild">
        </div>
        <div class="MiddelChild">
            <asp:Label ID="HallCahrgeLb" runat="server" style="color: #FFFFCC"></asp:Label>
        </div>
        <div class="RightChild">
            :هزینه تالار</div>
        
    </div>
    <div class="fieldBig">
    <div class="LeftChildBig">
    
    </div>
    <div class="MiddelChildBig">
        <asp:Label ID="CostumerMessageLb" runat="server" style="color: #FFFFCC"></asp:Label>
    </div>
    <div class="RightChildBig">
    :پیام کاربر
    </div>
    </div>
    <div class="fieldNormal">
        <div class="LeftChild">
        </div>
        <div class="MiddelChild">
            <asp:Label ID="submitDateLb" runat="server" style="color: #FFFFCC"></asp:Label>
        </div>
        <div class="RightChild">
            :تاریخ ثبت رزرو</div>
        
    </div>
    <div class="fieldNormal">
        <div class="LeftChild">
        </div>
        <div class="MiddelChild">
        </div>
        <div class="RightChild">
           </div>
        
    </div>
</div>