<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ReservationForm.ascx.cs"
    Inherits="Controls_ReservationForm" %>
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
            <asp:Label ID="dateOfCermoneyLb" runat="server" style="color: #FFFFCC"></asp:Label>
        </div>
        <div class="RightChild">
            
            : تاریخ مجلس</div>
    </div>
    
    <div class="fieldNormal">
        <div class="LeftChild">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="typeOfCermonydd" ErrorMessage="نوع مراسم خورد را مشخص کنید"></asp:RequiredFieldValidator>
        </div>
        <div class="MiddelChild">
            <asp:DropDownList ID="typeOfCermonydd" runat="server" Width="216px">
                <asp:ListItem Selected="True">مراسم عقد و عروسی</asp:ListItem>
                <asp:ListItem>مراسم ولیمه و حجاج</asp:ListItem>
                <asp:ListItem>جشن های کوچک و خانوادگی</asp:ListItem>
                <asp:ListItem>مراسم عزاداری و سوگواری</asp:ListItem>
                <asp:ListItem>همایش و جلسه کاری</asp:ListItem>
                <asp:ListItem>متفرقه</asp:ListItem>
            </asp:DropDownList>
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
            <asp:Label ID="hallPriceLb" runat="server" style="color: #FFFFCC" Text="Label"></asp:Label>
        </div>
        <div class="RightChild">
            :هزینه تالار</div>
        
    </div>
    <div class="fieldBig">
    <div class="LeftChildBig">
    
    </div>
    <div class="MiddelChildBig">
        <asp:TextBox ID="costumerMessageTxt" runat="server" Height="59px" TextMode="MultiLine" 
            Width="271px"></asp:TextBox>
    </div>
    <div class="RightChildBig">
    :پیام کاربر
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
            <asp:ImageButton ID="ImageButton1" runat="server" 
                ImageUrl="~/Image/registerReserve.png" onclick="ImageButton1_Click" />
        </div>
        <div class="RightChild">
           </div>
        
    </div>
</div>
