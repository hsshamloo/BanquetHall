<%@ Control Language="C#" AutoEventWireup="true" CodeFile="RegisterControl.ascx.cs"
    Inherits="RegisterControl" %>

<link href="../App_Themes/StyleSheet1.css" rel="stylesheet" type="text/css" />
<div class="Parent">
    <div id="Fild1" class="fieldNormal">
        <div id="LeftChild" class="LeftChild">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="FnameTxt" CssClass="erorMesaag" 
                ErrorMessage="نام خود را وارد کنید"></asp:RequiredFieldValidator>
        </div>
        <div id="SecendLeftChild" class="MiddelChild">
            *<asp:TextBox ID="FnameTxt" runat="server" CssClass="textBoxStyle" 
                MaxLength="30" Width="160px" ></asp:TextBox>
        </div>
        <div id="RightChild" class="RightChild">
            : نام</div>
    </div>

    <div id="Field2" class="fieldNormal">
        <div id="Div2" class="LeftChild">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="lNameTxt" CssClass="erorMesaag" 
                ErrorMessage="نام خانوادگی خود را وارد کنید"></asp:RequiredFieldValidator>
        </div>
        <div id="Div3" class="MiddelChild">
            *<asp:TextBox ID="lNameTxt" runat="server" CssClass="textBoxStyle" 
                MaxLength="50" Width="200px"></asp:TextBox>
        </div>
        <div id="Div4" class="RightChild">
            : نام خانوادگی</div>
    </div>
    <div id="Div1" class="fieldNormal">
        <div id="Div5" class="LeftChild">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="passWordTxt" CssClass="erorMesaag" 
                ErrorMessage="کلمه عبور خود را وارد کنید"></asp:RequiredFieldValidator>
        </div>
        <div id="Div6" class="MiddelChild">
            *<asp:TextBox ID="passWordTxt" runat="server" TextMode="Password" 
                CssClass="textBoxStyle" MaxLength="12" Width="100px"></asp:TextBox>
        </div>
        <div id="Div7" class="RightChild">
            : رمز عبور</div>
    </div>
    <div id="Div8" class="fieldNormal">
        <div id="Div9" class="LeftChild">
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="rePassWord" ControlToValidate="passWordTxt" 
                ErrorMessage="کلمه های عبور یکسان نمی باشد" Display="Dynamic"></asp:CompareValidator>
        </div>
        <div id="Div10" class="MiddelChild">
            *<asp:TextBox ID="rePassWord" runat="server" TextMode="Password" 
                CssClass="textBoxStyle" MaxLength="12" Width="100px"></asp:TextBox>
        </div>
        <div id="Div11" class="RightChild">
            : تکرار رمز عبور</div>
    </div>
    <div id="Div12" class="fieldBig">
        <div id="Div13" class="LeftChildBig">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="genderSelect" CssClass="erorMesaag" 
                ErrorMessage="جنسیت خود را انتخاب کنید"></asp:RequiredFieldValidator>
            <br />
        </div>
        <div id="Div14" class="MiddelChildBig">
            <asp:RadioButtonList ID="genderSelect" runat="server" CellPadding="0" 
                CellSpacing="0" CssClass="gender" style="float: right">
                <asp:ListItem Selected="True" Value="آقای">مرد</asp:ListItem>
                <asp:ListItem Value="خانم">زن</asp:ListItem>
            </asp:RadioButtonList>
        </div>
        <div id="Div15" class="RightChildBig">
            :جنسیت</div>
    </div>
    <div id="Div16" class="fieldNormal">
        <div id="Div17" class="LeftChild">
           <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="EmailTxt" ErrorMessage="ایمیل معتبر وارد کنید" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                </asp:RegularExpressionValidator> <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ControlToValidate="EmailTxt" CssClass="erorMesaag" 
                ErrorMessage="ایمیل خود را وارد کنید"></asp:RequiredFieldValidator>
            
        </div>
        <div id="Div18" class="MiddelChild">
            *<asp:TextBox ID="EmailTxt" runat="server" CssClass="textBoxStyle" 
                MaxLength="60" Width="240px"></asp:TextBox>
        </div>
        <div id="Div19" class="RightChild">
            :ایمیل</div>
    </div>
    <div id="Div48" class="fieldNormal">
        <div id="Div49" class="LeftChild">
            <asp:CompareValidator ID="CompareValidator2" runat="server" 
                ControlToCompare="reEmail" ControlToValidate="EmailTxt" 
                ErrorMessage="ایمیل های وارد شده یکسان نمی باشند"></asp:CompareValidator>
        </div>
        <div id="Div50" class="MiddelChild">
            *<asp:TextBox ID="reEmail" runat="server" CssClass="textBoxStyle" 
                MaxLength="60" Width="240px"></asp:TextBox>
        </div>
        <div id="Div51" class="RightChild">
            :تکرار ایمیل</div>
    </div>
    <div id="Div20" class="fieldNormal">
        <div id="Div21" class="LeftChild">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ControlToValidate="telTxt" CssClass="erorMesaag" 
                ErrorMessage="شمار تلفن خود را وارد کنید"></asp:RequiredFieldValidator>
        </div>
        <div id="Div22" class="MiddelChild">
            *<asp:TextBox ID="telTxt" runat="server" CssClass="textBoxStyle" Width="150px"></asp:TextBox>
        </div>
        <div id="Div23" class="RightChild">
            :تلفن</div>
    </div>
    <div id="Div24" class="fieldNormal">
        <div id="Div25" class="LeftChild">
        </div>
        <div id="Div26" class="MiddelChild">
            <asp:TextBox ID="countryTxt" runat="server" CssClass="textBoxStyle" 
                Width="100px"></asp:TextBox>
        </div>
        <div id="Div27" class="RightChild">
            :کشور</div>
    </div>
    <div id="Div28" class="fieldNormal">
        <div id="Div29" class="LeftChild">
        </div>
        <div id="Div30" class="MiddelChild">
            <asp:TextBox ID="provinceTxt" runat="server" CssClass="textBoxStyle" 
                Width="100px"></asp:TextBox>
        </div>
        <div id="Div31" class="RightChild">
            :استان</div>
    </div>
    <div id="Div32" class="fieldNormal">
        <div id="Div33" class="LeftChild">
        </div>
        <div id="Div34" class="MiddelChild">
            <asp:TextBox ID="cityTxt" runat="server" CssClass="textBoxStyle" Width="100px"></asp:TextBox>
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
                Width="240px"></asp:TextBox>
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
                ImageUrl="~/Image/Register.png" onclick="ImageButton1_Click" />
          </div>
        <div id="Div47" class="RightChild">
        </div>
    </div>
</div>
