<%@ Page Language="VB" MasterPageFile="~/Alumni.master" AutoEventWireup="false" CodeFile="EventView.aspx.vb" Inherits="EventView" title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="528px" Style="z-index: 100; left: 144px;
        position: absolute; top: 341px; background-image: url(images/blu4.jpg);" Width="1119px">
        <asp:Label ID="Label2" runat="server" BorderStyle="None" Font-Bold="True" Font-Italic="True"
            Font-Names="Baskerville Old Face" Font-Size="X-Large" Font-Underline="True" ForeColor="#C04000"
            Height="22px" Style="z-index: 100; left: 272px; position: absolute; top: -66px"
            Text="College events" Width="295px"></asp:Label>
        <asp:Label ID="Label1" runat="server" Style="z-index: 101; left: 262px; position: absolute;
            top: 18px" Text="Select the year" Width="144px" Font-Bold="True"></asp:Label>
        &nbsp;&nbsp;
        <asp:DropDownList ID="ddlyear" runat="server" AutoPostBack="True" Style="z-index: 102;
            left: 417px; position: absolute; top: 18px" Width="117px" Font-Bold="True">
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None"
            Height="1px" Style="z-index: 104; left: 106px; position: absolute; top: 77px"
            Width="902px">
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
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
</asp:Content>

