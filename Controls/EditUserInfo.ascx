<%@ Control Language="C#" AutoEventWireup="true" CodeFile="EditUserInfo.ascx.cs" Inherits="Controls_EditUserInfo" %>
<link href="../App_Themes/StyleSheet1.css" rel="stylesheet" type="text/css" />
<div class="Parent">
<div id="Div5" class="fieldNormal">
        <div id="Div6" class="LeftChild">
            
        </div>
        <div id="Div7" class="MiddelChild">
            
        </div>
        <div id="Div8" class="RightChild">
         </div>
    </div>
<div id="Div1" class="fieldNormal">
        <div id="Div2" class="LeftChild">
            
        </div>
        <div id="Div3" class="MiddelChild">
            تغییرات اطلاعات تماس کاربر
        </div>
        <div id="Div4" class="RightChild">
         </div>
    </div>
    <div id="Div20" class="fieldNormal">
        <div id="Div21" class="LeftChild">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ControlToValidate="telTxt" CssClass="erorMesaag" 
                ErrorMessage="شمار تلفن خود را وارد کنید"></asp:RequiredFieldValidator>
        </div>
        <div id="Div22" class="MiddelChild">
            *<asp:TextBox ID="telTxt" runat="server" CssClass="textBoxStyle" 
                Width="150px" Height="25px"></asp:TextBox>
        </div>
        <div id="Div23" class="RightChild">
            :تلفن</div>
    </div>
    <div id="Div24" class="fieldNormal">
        <div id="Div25" class="LeftChild">
        </div>
        <div id="Div26" class="MiddelChild">
            <asp:TextBox ID="countryTxt" runat="server" CssClass="PersianText" 
                Width="100px" Height="25px"></asp:TextBox>
        </div>
        <div id="Div27" class="RightChild">
            :کشور</div>
    </div>
    <div id="Div28" class="fieldNormal">
        <div id="Div29" class="LeftChild">
        </div>
        <div id="Div30" class="MiddelChild">
            <asp:TextBox ID="provinceTxt" runat="server" CssClass="PersianText" 
                Width="100px" Height="25px"></asp:TextBox>
        </div>
        <div id="Div31" class="RightChild">
            :استان</div>
    </div>
    <div id="Div32" class="fieldNormal">
        <div id="Div33" class="LeftChild">
        </div>
        <div id="Div34" class="MiddelChild">
            <asp:TextBox ID="cityTxt" runat="server" CssClass="PersianText" Width="100px" 
                Height="25px"></asp:TextBox>
        </div>
        <div id="Div35" class="RightChild">
            :شهر</div>

    </div>
    <div id="Div36" class="fieldBig">
        <div id="Div37" class="LeftChildBig">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                ControlToValidate="Address" CssClass="erorMesaag" 
                ErrorMessage="آدرس خود را وارد کنید"></asp:RequiredFieldValidator>
        </div>
        <div id="Div38" class="MiddelChildBig">
            *<asp:TextBox ID="Address" runat="server" TextMode="MultiLine" Height="55px" 
                Width="240px" CssClass="PersianText"></asp:TextBox>
        </div>
        <div id="Div39" class="RightChildBig">
            :آدرس</div>
    </div>
    <div id="Div40" class="fieldNormal">
        <div id="Div41" class="LeftChild">
        </div>
        <div id="Div42" class="MiddelChild">
       

        </div>
        <div id="Div43" class="RightChild">
        </div>
    </div>
     <div id="Div44" class="fieldNormal">
        <div id="Div45" class="LeftChild">
            <asp:Label ID="MemberShipStatusLb" runat="server"></asp:Label>
            </div>
        <div id="Div46" class="MiddelChild">
        
&nbsp;&nbsp;
       
            <asp:ImageButton ID="ImageButton1" runat="server" 
                ImageUrl="~/Image/UpdateInfo.png" onclick="ImageButton1_Click" />
          </div>
        <div id="Div47" class="RightChild">
        </div>
    </div>
</div>
