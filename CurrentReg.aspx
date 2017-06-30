<%@ Page Language="VB" MasterPageFile="~/admin.master" AutoEventWireup="false" CodeFile="CurrentReg.aspx.vb" Inherits="CurrentReg" title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;
    <asp:Panel ID="Panel1" runat="server" Height="729px" Style="z-index: 103; left: 139px;
        background-image: url(images/blu4.jpg); position: absolute; top: 235px"
        Width="1153px">
    <asp:Label ID="Label6" runat="server" BorderStyle="None" Font-Bold="True" Font-Italic="True"
        Font-Names="Baskerville Old Face" Font-Size="X-Large" Font-Underline="True" ForeColor="Purple"
        Style="z-index: 100; left: 323px; position: absolute; top: 22px" Text="Current Student Registration Form"
        Width="452px"></asp:Label>
    <table style="z-index: 102; left: 170px; width: 711px; position: absolute; top: 83px;
        height: 398px">
        <tr>
            <td style="width: 64px; height: 3px">
                <asp:Label ID="Label1" runat="server" Style="z-index: 100; left: 77px; position: absolute;
                    top: 17px" Text="Name" Width="164px"></asp:Label>
                <asp:Label ID="Label2" runat="server" Style="z-index: 102; left: 77px; position: absolute;
                    top: 62px" Text="Reg No" Width="165px"></asp:Label>
            </td>
            <td style="width: 100px; height: 3px">
                <asp:TextBox ID="txtname" runat="server" Style="z-index: 100; left: 314px; position: absolute;
                    top: 13px" Width="247px"></asp:TextBox>
                <asp:TextBox ID="txtrno" runat="server" Style="z-index: 101; left: 313px; position: absolute;
                    top: 58px" Width="247px"></asp:TextBox>
                <asp:TextBox ID="txtadd" runat="server" Style="z-index: 102; left: 314px; position: absolute;
                    top: 105px" TextMode="MultiLine" Width="247px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname"
                    ErrorMessage="*" Height="10px" Style="z-index: 103; left: 580px; position: absolute;
                    top: 15px" Width="11px"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtrno"
                    ErrorMessage="*" Height="10px" Style="z-index: 105; left: 582px; position: absolute;
                    top: 58px" Width="11px"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 64px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 64px; height: 20px">
                <asp:Label ID="Label3" runat="server" Style="z-index: 100; left: 78px; position: absolute;
                    top: 112px" Text="Address" Width="159px"></asp:Label>
            </td>
            <td style="width: 100px; height: 20px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtadd"
                    ErrorMessage="*" Height="10px" Style="z-index: 100; left: 584px; position: absolute;
                    top: 115px" Width="11px"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 64px">
                <asp:Label ID="Label4" runat="server" Style="z-index: 100; left: 77px; position: absolute;
                    top: 161px" Text="E-mail ID" Width="155px"></asp:Label>
                <asp:Label ID="Label5" runat="server" Style="z-index: 101; left: 77px; position: absolute;
                    top: 209px" Text="User Name" Width="150px"></asp:Label>
                &nbsp;
                <asp:Label ID="Label7" runat="server" Style="z-index: 103; left: 79px; position: absolute;
                    top: 262px" Text="Phone No" Width="149px"></asp:Label>
                <asp:Label ID="Label8" runat="server" Style="z-index: 104; left: 78px; position: absolute;
                    top: 320px" Text="Date Of Birth" Width="146px"></asp:Label>
                <asp:Label ID="Label9" runat="server" Style="z-index: 106; left: 78px; position: absolute;
                    top: 363px" Text="Student Class" Width="151px"></asp:Label>
            </td>
            <td style="width: 100px">
                <asp:TextBox ID="txtemail" runat="server" Style="z-index: 100; left: 315px; position: absolute;
                    top: 159px" Width="247px"></asp:TextBox>
                <asp:TextBox ID="txtusername" runat="server" AutoPostBack="True" Style="z-index: 101;
                    left: 313px; position: absolute; top: 206px" Width="247px"></asp:TextBox>
                <asp:TextBox ID="txtphone" runat="server" Style="z-index: 102; left: 313px; position: absolute;
                    top: 262px" Width="247px"></asp:TextBox>
                <asp:TextBox ID="txtclass" runat="server" Style="z-index: 103; left: 312px; position: absolute;
                    top: 363px" Width="247px"></asp:TextBox>
                <asp:DropDownList ID="ddldate" runat="server" Style="z-index: 104; left: 313px; position: absolute;
                    top: 317px" Width="63px">
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="ddlmonth" runat="server" Style="z-index: 105; left: 394px;
                    position: absolute; top: 316px" Width="63px">
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="ddlyear" runat="server" Style="z-index: 106; left: 468px; position: absolute;
                    top: 317px" Width="63px">
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtemail"
                    ErrorMessage="*" Height="10px" Style="z-index: 108; left: 583px; position: absolute;
                    top: 164px" Width="11px"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 64px">
            </td>
            <td style="width: 100px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtusername"
                    ErrorMessage="*" Height="10px" Style="z-index: 100; left: 583px; position: absolute;
                    top: 210px" Width="11px"></asp:RequiredFieldValidator>
                <asp:Label ID="lbluser" runat="server" BorderStyle="None" Font-Bold="True" Font-Italic="True"
                    Font-Names="Bell MT" ForeColor="Red" Style="z-index: 102; left: 612px; position: absolute;
                    top: 212px" Text="username already exists" Visible="False" Width="187px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 64px; height: 13px">
            </td>
            <td style="width: 100px; height: 13px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtphone"
                    ErrorMessage="*" Height="10px" Style="z-index: 100; left: 583px; position: absolute;
                    top: 264px" Width="11px"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 64px; height: 13px">
            </td>
            <td style="width: 100px; height: 13px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtclass"
                    ErrorMessage="*" Height="10px" Style="z-index: 100; left: 583px; position: absolute;
                    top: 365px" Width="11px"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtname"
                    ErrorMessage="Enter only letters" Style="z-index: 101; left: 609px; position: absolute;
                    top: 12px" ValidationExpression="[a-zA-Z]+" Width="111px"></asp:RegularExpressionValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtrno"
                    ErrorMessage="Enter only Numbers" Style="z-index: 102; left: 608px; position: absolute;
                    top: 62px" ValidationExpression="[0-9]*" Width="146px"></asp:RegularExpressionValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtphone"
                    ErrorMessage="Enter only Numbers" Style="z-index: 105; left: 608px; position: absolute;
                    top: 264px" ValidationExpression="[0-9]*" Width="146px"></asp:RegularExpressionValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtemail"
                    ErrorMessage="Incorrect Format Eg:- a@gmail.com" Style="z-index: 104; left: 614px;
                    position: absolute; top: 156px" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                    Width="129px"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 64px; height: 13px">
            </td>
            <td style="width: 100px; height: 13px">
            </td>
        </tr>
    </table>
    <asp:Button ID="Button1" runat="server" Font-Bold="True" Height="40px" Style="z-index: 103;
        left: 444px; position: absolute; top: 519px" Text="REGISTER" Width="141px" BackColor="White" BorderColor="Gray" BorderStyle="Double" />
    </asp:Panel>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

