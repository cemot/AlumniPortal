<%@ Page Language="VB" MasterPageFile="~/Alumni.master" AutoEventWireup="false" CodeFile="ShowMessagew.aspx.vb" Inherits="ShowMessagew" title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
    <asp:Panel ID="Panel1" runat="server" Height="586px" Style="z-index: 100; left: 144px;
        background-image: url(images/blu4.jpg); position: absolute; top: 342px"
        Width="1119px">
        <asp:TextBox ID="txtmsg" runat="server" BorderStyle="None" Height="393px" Style="z-index: 100;
            left: 61px; position: absolute; top: 89px" TextMode="MultiLine" Width="983px" ReadOnly="True"></asp:TextBox>
        &nbsp;
        <asp:TextBox ID="txtfrom" runat="server" BorderStyle="None" ReadOnly="True" Style="z-index: 101;
            left: 116px; position: absolute; top: 62px" Width="295px"></asp:TextBox>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="DimGray" Style="z-index: 102;
            left: 65px; position: absolute; top: 60px" Text="From : "></asp:Label>
        <asp:TextBox ID="Txtdate" runat="server" BorderStyle="None" ReadOnly="True" Style="z-index: 103;
            left: 741px; position: absolute; top: 39px" Width="295px"></asp:TextBox>
        &nbsp;
        <asp:Image ID="Image1" runat="server" Height="22px" ImageUrl="~/images/arrow6.jpg"
            Style="z-index: 107; left: 70px; position: absolute; top: 27px" Width="29px" />
        <asp:TextBox ID="txtsub" runat="server" BorderStyle="None" ReadOnly="True" Style="z-index: 105;
            left: 124px; position: absolute; top: 28px" Width="440px"></asp:TextBox>
        &nbsp; &nbsp;&nbsp;
        <asp:Panel ID="Panel2" runat="server" Height="33px" Style="z-index: 106; left: 159px;
            position: absolute; top: -37px; background-color: #ccffff" Width="946px">
        <asp:Button ID="btnreply" runat="server" BackColor="White" BorderColor="Gray" BorderStyle="Double"
            Font-Bold="True" Style="z-index: 100; left: 121px; position: absolute; top: 5px"
            Text="Reply" />
            <asp:Button ID="btnforward" runat="server" BackColor="White" BorderColor="Gray" BorderStyle="Double"
                Font-Bold="True" Style="z-index: 101; left: 217px; position: absolute; top: 4px"
                Text="Forward" />
            <asp:Button ID="Button1" runat="server" BackColor="White" BorderColor="Gray" BorderStyle="Double"
                Font-Bold="True" Style="z-index: 102; left: 26px; position: absolute; top: 5px"
                Text="Delete" />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Inbox.aspx" Style="z-index: 104;
                left: 320px; position: absolute; top: 8px">Back to messages</asp:HyperLink>
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
</asp:Content>

