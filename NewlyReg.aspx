<%@ Page Language="VB" MasterPageFile="~/admin.master" AutoEventWireup="false" CodeFile="NewlyReg.aspx.vb" Inherits="NewlyReg" title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp; &nbsp;&nbsp;
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:Panel ID="Panel1" runat="server" Height="725px" Style="z-index: 104; left: 139px;
        background-image: url(images/blu4.jpg); position: absolute; top: 253px"
        Width="1153px">
    <asp:Label ID="Label1" runat="server" BorderStyle="None" Font-Bold="True" Font-Italic="True"
        Font-Names="Bell MT" Font-Size="X-Large" Font-Underline="True" Style="z-index: 100;
        left: 22px; position: absolute; top: 25px" Text="Approval System" Width="237px"></asp:Label>
        &nbsp;
    <asp:Image ID="Image1" runat="server" Height="137px" ImageUrl="~/images/Griphon_II_by_pulsarix.jpg"
        Style="z-index: 103; left: 962px; position: absolute; top: 1px" Width="182px" />
    <asp:GridView ID="GridView1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan"
        BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" Style="z-index: 102;
        left: 32px; position: absolute; top: 83px" Width="859px">
        <FooterStyle BackColor="Tan" />
        <Columns>
            <asp:CommandField ButtonType="Button" SelectText="APPROVE" ShowSelectButton="True" />
        </Columns>
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" HorizontalAlign="Left" />
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
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
</asp:Content>

