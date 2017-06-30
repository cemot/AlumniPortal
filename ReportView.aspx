<%@ Page Language="VB" MasterPageFile="~/Alumni.master" AutoEventWireup="false" CodeFile="ReportView.aspx.vb" Inherits="ReportView" title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="470px" Style="z-index: 100; left: 144px;
        position: absolute; top: 339px; background-image: url(images/blu4.jpg);" Width="1119px">
        <asp:Button ID="btnregAlumini" runat="server" Style="z-index: 100; left: 35px; position: absolute;
            top: 88px; background-color: #ffffff;" Text="Newly Registered Alumini's" Width="190px" BorderColor="Gray" BorderStyle="Double" Font-Bold="True" />
        <asp:Label ID="Label2" runat="server" BorderStyle="None" Font-Bold="True" Font-Italic="True"
            Font-Names="Baskerville Old Face" Font-Size="X-Large" Font-Underline="True" ForeColor="#C04000"
            Height="22px" Style="z-index: 101; left: 27px; position: absolute; top: 25px"
            Text="Reports" Width="177px"></asp:Label>
        <asp:Button ID="btntotal" runat="server" Style="z-index: 102; left: 32px; position: absolute;
            top: 150px; background-color: #ffffff;" Text="Total Registered Alumini's" Width="186px" BorderColor="Gray" BorderStyle="Double" Font-Bold="True" />
        <asp:Button ID="btnsearch" runat="server" Style="z-index: 103; left: 34px; position: absolute;
            top: 338px; background-color: #ffffff;" Text="Search" BorderColor="Gray" BorderStyle="Double" Font-Bold="True" />
        <asp:RadioButtonList ID="rblgender" runat="server" Height="95px" Style="z-index: 104;
            left: 30px; position: absolute; top: 214px" Width="180px" Font-Bold="True">
            <asp:ListItem>MALE</asp:ListItem>
            <asp:ListItem>FEMALE</asp:ListItem>
        </asp:RadioButtonList>
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None"
            Style="z-index: 105; left: 324px; position: absolute; top: 91px" Visible="False"
            Width="614px">
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" Font-Underline="True" ForeColor="White"
                HorizontalAlign="Left" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
        <asp:Label ID="lbltotal" runat="server" BorderStyle="None" Style="z-index: 106; left: 256px;
            position: absolute; top: 156px; background-color: transparent" Text="Total Registered Alumini's:"
            Visible="False" Width="184px" Font-Bold="True" ForeColor="Maroon"></asp:Label>
        <asp:TextBox ID="txttotal" runat="server" BorderStyle="None" ReadOnly="True" Style="z-index: 108;
            left: 453px; position: absolute; top: 156px; background-color: transparent" Visible="False"
            Width="116px" Font-Bold="True" ForeColor="Maroon"></asp:TextBox>
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
</asp:Content>

