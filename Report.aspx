<%@ Page Language="VB" MasterPageFile="~/admin.master" AutoEventWireup="false" CodeFile="Report.aspx.vb" Inherits="Report" title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp; &nbsp; &nbsp;&nbsp;
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
    <asp:Panel ID="Panel1" runat="server" Height="714px" Style="z-index: 109; left: 139px;
        background-image: url(images/blu4.jpg); position: absolute; top: 249px"
        Width="1153px">
    <asp:Button ID="btnregAlumini" runat="server" Style="z-index: 100; left: 25px; position: absolute;
        top: 87px; background-color: #ffffff;" Text="Newly Registered Alumini's" Width="200px" BorderColor="Gray" BorderStyle="Double" Font-Bold="True" />
    <asp:Label ID="Label2" runat="server" BorderStyle="None" Font-Bold="True" Font-Italic="True"
        Font-Names="Baskerville Old Face" Font-Size="X-Large" Font-Underline="True" ForeColor="#C04000"
        Height="22px" Style="z-index: 101; left: 15px; position: absolute; top: 17px"
        Text="Reports" Width="177px"></asp:Label>
    <asp:Button ID="btntotal" runat="server" Style="z-index: 102; left: 22px; position: absolute;
        top: 152px; background-color: #ffffff;" Text="Total Registered Alumini's" Width="199px" BorderColor="Gray" BorderStyle="Double" Font-Bold="True" />
    <asp:Button ID="btnsearch" runat="server" Style="z-index: 103; left: 40px; position: absolute;
        top: 344px; background-color: #ffffff;" Text="Search" BorderColor="Gray" BorderStyle="Double" Font-Bold="True" />
    <asp:RadioButtonList ID="rblgender" runat="server" Height="95px" Style="z-index: 104;
        left: 28px; position: absolute; top: 209px" Width="180px" Font-Bold="True">
        <asp:ListItem>MALE</asp:ListItem>
        <asp:ListItem>FEMALE</asp:ListItem>
    </asp:RadioButtonList>
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None"
        Style="z-index: 105; left: 282px; position: absolute; top: 86px" Visible="False"
        Width="677px">
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" Font-Underline="True" ForeColor="White"
            HorizontalAlign="Left" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
    <asp:Label ID="lbltotal" runat="server" BorderStyle="None" Style="z-index: 106; left: 247px;
        position: absolute; top: 152px; background-color: transparent" Text="Total Registered Alumini's:"
        Visible="False" Width="184px" Font-Bold="True" ForeColor="#004040"></asp:Label>
    <asp:TextBox ID="txttotal" runat="server" BorderStyle="None" ReadOnly="True" Style="z-index: 108;
        left: 436px; position: absolute; top: 154px; background-color: transparent" Visible="False"
        Width="116px" Font-Bold="True" ForeColor="#004040"></asp:TextBox>
    </asp:Panel>
</asp:Content>

