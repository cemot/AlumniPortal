<%@ Page Language="VB" MasterPageFile="~/Alumni.master" AutoEventWireup="false" CodeFile="AlummiSearch.aspx.vb" Inherits="AlummiSearch" title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;
    <asp:Panel ID="Panel1" runat="server" Height="616px" Style="z-index: 100; left: 142px;
        position: absolute; top: 339px; background-image: url('images/blu.jpg');" 
        Width="1119px">
        <asp:Label ID="Label2" runat="server" BorderStyle="None" Font-Bold="True" Font-Italic="True"
            Font-Names="Bell MT" Font-Size="X-Large" Font-Underline="True" Style="z-index: 100;
            left: 184px; position: absolute; top: -75px" Text="Search for your friends here "
            Width="354px"></asp:Label>
        <asp:TextBox ID="txtname" runat="server" Style="z-index: 101; left: 262px; position: absolute;
            top: -19px" Width="191px"></asp:TextBox>
        <asp:Label ID="Label1" runat="server" Font-Size="16pt" Style="z-index: 102; left: 184px;
            position: absolute; top: -20px" Text="Name" Width="67px"></asp:Label>
        <asp:Button ID="btnsearch" runat="server" Style="z-index: 103; left: 475px; position: absolute;
            top: -20px; background-color: #ffffff;" Text="Search" BorderColor="Gray" BorderStyle="Double" Font-Bold="True" />
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None"
            Style="z-index: 104; left: 612px; position: absolute; top: 58px" Width="498px">
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
        <asp:Panel ID="Panel2" runat="server" Height="1px" Style="z-index: 105; left: 83px;
            position: absolute; top: 54px" Visible="False" Width="517px">
            <asp:Label ID="Label3" runat="server" Height="18px" Style="z-index: 100; left: 19px;
                position: absolute; top: 24px" Text="Name" Width="147px"></asp:Label>
            <asp:TextBox ID="txtname1" runat="server" ReadOnly="True" Style="z-index: 101; left: 206px;
                position: absolute; top: 22px" BorderStyle="None"></asp:TextBox>
            <asp:Label ID="Address" runat="server" Style="z-index: 102; left: 20px; position: absolute;
                top: 81px" Text="Address" Width="142px"></asp:Label>
            <asp:TextBox ID="txtadd" runat="server" ReadOnly="True" Style="z-index: 103; left: 206px;
                position: absolute; top: 65px" TabIndex="1" TextMode="MultiLine" BorderStyle="None"></asp:TextBox>
            &nbsp; &nbsp;&nbsp;
            <asp:TextBox ID="txtdob" runat="server" ReadOnly="True" Style="z-index: 108; left: 208px;
                position: absolute; top: 138px" TabIndex="2" Width="153px" BorderStyle="None"></asp:TextBox>
            <asp:Label ID="Label6" runat="server" Style="z-index: 109; left: 22px; position: absolute;
                top: 135px" Text="Date Of Birth" Width="125px"></asp:Label>
            <asp:Label ID="Label7" runat="server" Style="z-index: 110; left: 20px; position: absolute;
                top: 195px" Text="Email ID" Width="134px"></asp:Label>
            <asp:TextBox ID="txtemail" runat="server" ReadOnly="True" Style="z-index: 111; left: 205px;
                position: absolute; top: 194px" TabIndex="9" Width="161px" BorderStyle="None"></asp:TextBox>
            <asp:Label ID="Label8" runat="server" Style="z-index: 112; left: 21px; position: absolute;
                top: 246px" Text="Contact No" Width="123px"></asp:Label>
            <asp:TextBox ID="txtcno" runat="server" ReadOnly="True" Style="z-index: 113; left: 208px;
                position: absolute; top: 246px" TabIndex="13" Width="153px" BorderStyle="None"></asp:TextBox>
            <asp:TextBox ID="txtgender" runat="server" ReadOnly="True" Style="z-index: 122; left: 208px;
                position: absolute; top: 299px" TabIndex="13" Width="153px" BorderStyle="None"></asp:TextBox>
            <asp:Label ID="Label9" runat="server" Style="z-index: 115; left: 25px; position: absolute;
                top: 299px" Text="Gender" Width="123px"></asp:Label>
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
            
            <asp:Label ID="Label12" runat="server" Style="z-index: 116; left: 27px; position: absolute;
                top: 464px" Text="Designation" Width="127px"></asp:Label>
            <asp:TextBox ID="txtdesig" runat="server" ReadOnly="True" Style="z-index: 117; left: 209px;
                position: absolute; top: 463px" TabIndex="17" Width="202px" BorderStyle="None"></asp:TextBox>
            <asp:Label ID="Label10" runat="server" Style="z-index: 118; left: 26px; position: absolute;
                top: 353px" Text="Qualification" Width="123px"></asp:Label>
            <asp:TextBox ID="txtqual" runat="server" ReadOnly="True" Style="z-index: 119; left: 212px;
                position: absolute; top: 355px" TabIndex="15" Width="202px" BorderStyle="None"></asp:TextBox>
            <asp:Label ID="Label11" runat="server" Style="z-index: 120; left: 26px; position: absolute;
                top: 407px" Text="Works At" Width="123px"></asp:Label>
            <asp:TextBox ID="txtwork" runat="server" ReadOnly="True" Style="z-index: 121; left: 208px;
                position: absolute; top: 406px" TabIndex="16" Width="202px" BorderStyle="None"></asp:TextBox>
        </asp:Panel>
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
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

