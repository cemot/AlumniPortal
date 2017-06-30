<%@ Page Language="VB" MasterPageFile="~/admin.master" AutoEventWireup="false" CodeFile="CurrentDetails.aspx.vb" Inherits="CurrentDetails" title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="735px" Style="z-index: 100; left: 138px;
        background-image: url('images/blu4.jpg'); position: absolute; top: 235px"
        Width="1153px">
        <asp:Label ID="Label1" runat="server" Style="z-index: 100; left: 258px; position: absolute;
            top: 87px" Text="Name" Width="97px"></asp:Label>
        <asp:TextBox ID="txtname" runat="server" ReadOnly="True" Style="z-index: 101; left: 423px;
            position: absolute; top: 85px" Width="229px"></asp:TextBox>
        <asp:Label ID="Label2" runat="server" Style="z-index: 102; left: 259px; position: absolute;
            top: 36px" Text="Admission No" Width="97px"></asp:Label>
        <asp:TextBox ID="txtadno" runat="server" Style="z-index: 103; left: 422px;
            position: absolute; top: 32px" Width="229px"></asp:TextBox>
        <asp:Label ID="Label3" runat="server" Style="z-index: 104; left: 255px; position: absolute;
            top: 349px" Text="Father's Name" Width="97px"></asp:Label>
        <asp:Label ID="Label10" runat="server" Style="z-index: 105; left: 257px; position: absolute;
            top: 244px" Text="DOB(In Figures:)" Width="137px"></asp:Label>
        <asp:Label ID="Label11" runat="server" Style="z-index: 106; left: 256px; position: absolute;
            top: 299px" Text="DOB(In Words)" Width="138px"></asp:Label>
        <asp:TextBox ID="txtfname" runat="server" Style="z-index: 107; left: 420px; position: absolute;
            top: 346px" Width="229px"></asp:TextBox>
        &nbsp;
        <asp:TextBox ID="txtdobw" runat="server" Style="z-index: 108; left: 420px; position: absolute;
            top: 296px" Width="229px"></asp:TextBox>
        <asp:Label ID="Label4" runat="server" Style="z-index: 109; left: 255px; position: absolute;
            top: 409px" Text="Mother's Name" Width="97px"></asp:Label>
        <asp:Label ID="Label6" runat="server" Style="z-index: 110; left: 257px; position: absolute;
            top: 189px" Text="Gender" Width="97px"></asp:Label>
        <asp:RadioButtonList ID="rblgender" runat="server" RepeatDirection="Horizontal" Style="z-index: 111;
            left: 424px; position: absolute; top: 187px" Width="235px">
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
        </asp:RadioButtonList>
        <asp:TextBox ID="txtmname" runat="server" Style="z-index: 112; left: 420px; position: absolute;
            top: 405px" Width="229px"></asp:TextBox>
        <asp:TextBox ID="txtnational" runat="server" Style="z-index: 113; left: 419px; position: absolute;
            top: 466px" Width="231px"></asp:TextBox>
        <asp:TextBox ID="txtreligion" runat="server" Style="z-index: 114; left: 420px; position: absolute;
            top: 526px" Width="231px"></asp:TextBox>
        <asp:TextBox ID="txtcaste" runat="server" Style="z-index: 115; left: 420px; position: absolute;
            top: 591px" Width="229px"></asp:TextBox>
        &nbsp;
        &nbsp;&nbsp;
        <asp:Button ID="btnsave" runat="server" BackColor="White" BorderColor="Gray" BorderStyle="Double"
            Font-Bold="True" Height="31px" Style="z-index: 116; left: 389px; position: absolute;
            top: 650px" Text="Save" Width="67px" />
        <asp:Label ID="Label5" runat="server" Style="z-index: 117; left: 256px; position: absolute;
            top: 143px" Text="Date of Admission" Width="127px"></asp:Label>
        <asp:DropDownList ID="ddldate" runat="server" Style="z-index: 118; left: 424px; position: absolute;
            top: 142px" Width="63px">
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="ddlmonth" runat="server" Style="z-index: 119; left: 503px;
            position: absolute; top: 141px" Width="63px">
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="ddlyear" runat="server" Style="z-index: 120; left: 583px; position: absolute;
            top: 139px" Width="63px">
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="ddldate1" runat="server" Style="z-index: 121; left: 426px;
            position: absolute; top: 239px" Width="63px">
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="ddlmonth1" runat="server" Style="z-index: 122; left: 511px;
            position: absolute; top: 239px" Width="63px">
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="ddlyear1" runat="server" Style="z-index: 123; left: 589px;
            position: absolute; top: 238px" Width="63px">
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="Label7" runat="server" Style="z-index: 124; left: 251px; position: absolute;
            top: 471px" Text="Nationality" Width="97px"></asp:Label>
        <asp:Label ID="Label8" runat="server" Style="z-index: 125; left: 253px; position: absolute;
            top: 531px" Text="Religion" Width="97px"></asp:Label>
        <asp:Label ID="Label9" runat="server" Style="z-index: 126; left: 250px; position: absolute;
            top: 597px" Text="Community/Caste" Width="115px"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtadno"
            ErrorMessage="*" Style="z-index: 127; left: 663px; position: absolute; top: 32px"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtname"
            ErrorMessage="*" Style="z-index: 128; left: 664px; position: absolute; top: 87px"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtfname"
            ErrorMessage="*" Style="z-index: 129; left: 661px; position: absolute; top: 349px"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtmname"
            ErrorMessage="*" Style="z-index: 130; left: 659px; position: absolute; top: 407px"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtnational"
            ErrorMessage="*" Style="z-index: 131; left: 662px; position: absolute; top: 468px"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtreligion"
            ErrorMessage="*" Style="z-index: 132; left: 664px; position: absolute; top: 526px"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtcaste"
            ErrorMessage="*" Style="z-index: 133; left: 660px; position: absolute; top: 594px"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtname"
            ErrorMessage="Enter only letters" Style="z-index: 134; left: 685px; position: absolute;
            top: 85px" ValidationExpression="[a-zA-Z]+" Width="111px"></asp:RegularExpressionValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtfname"
            ErrorMessage="Enter only letters" Style="z-index: 135; left: 686px; position: absolute;
            top: 347px" ValidationExpression="[a-zA-Z]+" Width="111px"></asp:RegularExpressionValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtadno"
            ErrorMessage="Enter only Numbers" Style="z-index: 136; left: 684px; position: absolute;
            top: 30px" ValidationExpression="[0-9]*" Width="146px"></asp:RegularExpressionValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtmname"
            ErrorMessage="Enter only letters" Style="z-index: 138; left: 689px; position: absolute;
            top: 407px" ValidationExpression="[a-zA-Z]+" Width="111px"></asp:RegularExpressionValidator>
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

