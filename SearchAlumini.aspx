<%@ Page Language="VB" MasterPageFile="~/admin.master" AutoEventWireup="false" CodeFile="SearchAlumini.aspx.vb" Inherits="SearchAlumini" title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
    <br />
    <br />
    <br />
    <br />
    <asp:Panel ID="Panel2" runat="server" Height="729px" Style="z-index: 108; left: 139px;
        background-image: url(images/blu4.jpg); position: absolute; top: 254px"
        Width="1153px">
        &nbsp;
    <asp:TextBox ID="txtname" runat="server" Style="z-index: 100; left: 103px; position: absolute;
        top: 73px" Width="180px"></asp:TextBox>
    <asp:Label ID="Label1" runat="server" Font-Size="16pt" Style="z-index: 101; left: 28px;
        position: absolute; top: 70px" Text="Name" Width="67px"></asp:Label>
    <asp:Button ID="btnsearch" runat="server" Style="z-index: 102; left: 302px; position: absolute;
        top: 71px" Text="Search" BackColor="Silver" BorderColor="#404040" BorderStyle="Double" Font-Bold="True" Font-Size="Medium" ForeColor="Black" />
    <asp:Panel ID="Panel1" runat="server" Height="610px" Style="z-index: 103; left: 48px;
        position: absolute; top: 112px" Width="597px" Visible="False">
        <asp:Label ID="Label3" runat="server" Height="18px" Style="z-index: 100; left: 19px;
            position: absolute; top: 24px" Text="Name" Width="147px" BorderStyle="None"></asp:Label>
        <asp:TextBox ID="txtname1" runat="server" Style="z-index: 101; left: 206px; position: absolute;
            top: 22px" ReadOnly="True" BorderStyle="None" Width="246px"></asp:TextBox>
        <asp:Label ID="Address" runat="server" Style="z-index: 102; left: 20px; position: absolute;
            top: 81px" Text="Address" Width="142px" BorderStyle="None"></asp:Label>
        <asp:TextBox ID="txtadd" runat="server" Style="z-index: 103; left: 206px; position: absolute;
            top: 65px" TabIndex="1" TextMode="MultiLine" ReadOnly="True" BorderStyle="None"></asp:TextBox>
        <asp:Label ID="Label4" runat="server" Style="z-index: 104; left: 22px; position: absolute;
            top: 138px" Text="Register No." Width="135px" BorderStyle="None"></asp:Label>
        <asp:TextBox ID="txtrno" runat="server" Style="z-index: 105; left: 205px; position: absolute;
            top: 137px" TabIndex="2" Width="153px" ReadOnly="True" BorderStyle="None"></asp:TextBox>
        <asp:Label ID="Label5" runat="server" Style="z-index: 106; left: 20px; position: absolute;
            top: 191px" Text="Joining Date" Width="134px" BorderStyle="None"></asp:Label>
        <asp:TextBox ID="txtjdate" runat="server" Style="z-index: 107; left: 203px; position: absolute;
            top: 189px" TabIndex="2" Width="153px" ReadOnly="True" BorderStyle="None"></asp:TextBox>
        <asp:TextBox ID="txtdob" runat="server" ReadOnly="True" Style="z-index: 108; left: 203px;
            position: absolute; top: 248px" TabIndex="2" Width="153px" BorderStyle="None"></asp:TextBox>
        <asp:Label ID="Label6" runat="server" Style="z-index: 109; left: 23px; position: absolute;
            top: 248px" Text="Date Of Birth" Width="125px" BorderStyle="None"></asp:Label>
        <asp:Label ID="Label7" runat="server" Style="z-index: 110; left: 23px; position: absolute;
            top: 305px" Text="Email ID" Width="134px" BorderStyle="None"></asp:Label>
        <asp:TextBox ID="txtemail" runat="server" ReadOnly="True" Style="z-index: 111; left: 200px;
            position: absolute; top: 304px" TabIndex="9" Width="161px" BorderStyle="None"></asp:TextBox>
        <asp:Label ID="Label8" runat="server" Style="z-index: 112; left: 23px; position: absolute;
            top: 367px" Text="Contact No" Width="123px" BorderStyle="None"></asp:Label>
        <asp:TextBox ID="txtcno" runat="server" ReadOnly="True" Style="z-index: 113; left: 199px;
            position: absolute; top: 366px" TabIndex="13" Width="153px" BorderStyle="None"></asp:TextBox>
        <asp:TextBox ID="txtgender" runat="server" ReadOnly="True" Style="z-index: 114; left: 199px;
            position: absolute; top: 419px" TabIndex="13" Width="153px" BorderStyle="None"></asp:TextBox>
        <asp:Label ID="Label9" runat="server" Style="z-index: 115; left: 23px; position: absolute;
            top: 422px" Text="Gender" Width="123px" BorderStyle="None"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Image ID="Image2" runat="server" Height="96px" Style="z-index: 123; left: 461px;
            position: absolute; top: 71px" Width="118px" />
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
        <asp:Label ID="Label12" runat="server" Style="z-index: 117; left: 26px; position: absolute;
            top: 586px" Text="Designation" Width="127px" BorderStyle="None"></asp:Label>
        <asp:TextBox ID="txtdesig" runat="server" ReadOnly="True" Style="z-index: 118; left: 196px;
            position: absolute; top: 581px" TabIndex="17" Width="202px" BorderStyle="None"></asp:TextBox>
        <asp:Label ID="Label10" runat="server" Style="z-index: 119; left: 21px; position: absolute;
            top: 480px" Text="Qualification" Width="123px" BorderStyle="None"></asp:Label>
        <asp:TextBox ID="txtqual" runat="server" ReadOnly="True" Style="z-index: 120; left: 192px;
            position: absolute; top: 481px" TabIndex="15" Width="202px" BorderStyle="None"></asp:TextBox>
        <asp:Label ID="Label11" runat="server" Style="z-index: 121; left: 28px; position: absolute;
            top: 528px" Text="Works At" Width="123px" BorderStyle="None"></asp:Label>
        <asp:TextBox ID="txtwork" runat="server" ReadOnly="True" Style="z-index: 122; left: 195px;
            position: absolute; top: 524px" TabIndex="16" Width="202px" BorderStyle="None"></asp:TextBox>
        <br />
    </asp:Panel>
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None"
        Style="z-index: 104; left: 667px; position: absolute; top: 162px" Width="458px">
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ButtonType="Button" SelectText="MORE" ShowSelectButton="True" />
        </Columns>
    </asp:GridView>
        &nbsp; &nbsp;
    <asp:Image ID="Image1" runat="server" Height="118px" ImageUrl="~/images/can-stock-photo_csp1727120.jpg"
        Style="z-index: 105; left: 932px; position: absolute; top: 2px" Width="215px" />
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
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    <asp:Label ID="Label2" runat="server" BorderStyle="None" Font-Bold="True" Font-Italic="True"
        Font-Names="Bell MT" Font-Size="X-Large" Font-Underline="True" Style="z-index: 107;
        left: 26px; position: absolute; top: 25px" Text="Search For Alumni's " Width="279px"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
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
</asp:Content>

