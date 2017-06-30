<%@ Page Language="VB" MasterPageFile="~/Alumni.master" AutoEventWireup="false" CodeFile="CurrentSearch.aspx.vb" Inherits="CurrentSearch" title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="563px" Style="z-index: 100; left: 144px;
        position: absolute; top: 339px; background-image: url(images/blu4.jpg);" Width="1119px">
        <asp:Label ID="Label2" runat="server" BorderStyle="None" Font-Bold="True" Font-Italic="True"
            Font-Names="Baskerville Old Face" Font-Size="X-Large" Font-Underline="True" ForeColor="#C04000"
            Height="22px" Style="z-index: 100; left: 214px; position: absolute; top: -75px"
            Text="Search current students here" Width="358px"></asp:Label>
        <asp:TextBox ID="txtname" runat="server" Style="z-index: 101; left: 303px; position: absolute;
            top: -19px" Width="192px"></asp:TextBox>
        <asp:Label ID="Label1" runat="server" Font-Size="16pt" Style="z-index: 102; left: 214px;
            position: absolute; top: -20px" Text="Name" Width="67px"></asp:Label>
        <asp:Button ID="btnsearch" runat="server" Style="z-index: 103; left: 513px; position: absolute;
            top: -20px; background-image: url(images/0flowers3_sl-designs.jpg);" Text="Search" BorderColor="Gray" BorderStyle="Double" Font-Bold="True" />
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None"
            Height="1px" Style="z-index: 104; left: 29px; position: absolute; top: 57px"
            Width="480px">
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <Columns>
                <asp:CommandField ButtonType="Button" SelectText="VIEW" ShowSelectButton="True" />
            </Columns>
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" HorizontalAlign="Left" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
        <asp:Panel ID="Panel2" runat="server" Height="369px" Style="z-index: 106; left: 524px;
            position: absolute; top: 57px" Width="559px" Visible="False">
            <table style="z-index: 102; left: 24px; width: 514px; position: absolute; top: 9px;
                height: 446px">
                <tr>
                    <td style="width: 100px; height: 17px">
                        <asp:Label ID="Label3" runat="server" Style="z-index: 100; left: 48px; position: absolute;
                            top: 9px" Text="Name" Width="161px"></asp:Label>
                        <asp:Label ID="Label4" runat="server" Style="z-index: 101; left: 47px; position: absolute;
                            top: 194px" Text="Phone No" Width="161px"></asp:Label>
                        <asp:Label ID="Label5" runat="server" Style="z-index: 102; left: 46px; position: absolute;
                            top: 152px" Text="Email ID" Width="161px"></asp:Label>
                        <asp:Label ID="Label7" runat="server" Style="z-index: 105; left: 43px; position: absolute;
                            top: 98px" Text="Address" Width="161px"></asp:Label>
                        <asp:Label ID="Label6" runat="server" Style="z-index: 104; left: 46px; position: absolute;
                            top: 44px" Text="Reistration No" Width="161px"></asp:Label>
                    </td>
                    <td style="width: 90px; height: 17px">
                        <asp:TextBox ID="txtname1" runat="server" ReadOnly="True" Style="z-index: 100; left: 281px;
                            position: absolute; top: 5px" Width="197px" BorderStyle="None"></asp:TextBox>
                        <asp:TextBox ID="txtrno" runat="server" ReadOnly="True" Style="z-index: 101; left: 282px;
                            position: absolute; top: 43px" Width="197px" BorderStyle="None"></asp:TextBox>
                        <asp:TextBox ID="txtadd" runat="server" ReadOnly="True" Style="z-index: 103; left: 282px;
                            position: absolute; top: 90px" TextMode="MultiLine" Width="197px" BorderStyle="None"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px; height: 40px">
                    </td>
                    <td style="width: 90px; height: 40px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px; height: 39px">
                    </td>
                    <td style="width: 90px; height: 39px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px; height: 36px">
                    </td>
                    <td style="width: 90px; height: 36px">
                        <asp:TextBox ID="txtemail" runat="server" ReadOnly="True" Style="z-index: 100; left: 283px;
                            position: absolute; top: 147px" Width="197px" BorderStyle="None"></asp:TextBox>
                        <asp:TextBox ID="txtphone" runat="server" ReadOnly="True" Style="z-index: 101; left: 283px;
                            position: absolute; top: 196px" Width="197px" BorderStyle="None"></asp:TextBox>
                        <asp:TextBox ID="txtdob" runat="server" ReadOnly="True" Style="z-index: 102; left: 289px;
                            position: absolute; top: 313px" Width="197px" BorderStyle="None"></asp:TextBox>
                        <asp:TextBox ID="txtclass" runat="server" Style="z-index: 104; left: 293px; position: absolute;
                            top: 383px" Width="197px" ReadOnly="True" BorderStyle="None"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px; height: 42px">
                    </td>
                    <td style="width: 90px; height: 42px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px; height: 38px">
                        <asp:Label ID="Label8" runat="server" Style="z-index: 100; left: 41px; position: absolute;
                            top: 319px" Text="Date Of Birth" Width="161px"></asp:Label>
                        <asp:Label ID="Label9" runat="server" Style="z-index: 101; left: 54px; position: absolute;
                            top: 389px" Text="Class" Width="161px"></asp:Label>
                        <asp:Label ID="Label10" runat="server" Style="z-index: 103; left: 45px; position: absolute;
                            top: 252px" Text="User Name" Width="161px"></asp:Label>
                    </td>
                    <td style="width: 90px; height: 38px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px; height: 61px">
                        <asp:TextBox ID="txtuname" runat="server" ReadOnly="True" Style="z-index: 100; left: 285px;
                            position: absolute; top: 252px" Width="197px" BorderStyle="None"></asp:TextBox>
                    </td>
                    <td style="width: 90px; height: 61px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px; height: 61px">
                    </td>
                    <td style="width: 90px; height: 61px">
                    </td>
                </tr>
            </table>
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
            &nbsp;
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

