<%@ Page Language="VB" MasterPageFile="~/Alumni.master" AutoEventWireup="false" CodeFile="StaffView.aspx.vb" Inherits="StaffView" title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;
    <asp:Panel ID="Panel2" runat="server" Height="476px" Style="z-index: 102; left: 144px;
        position: absolute; top: 342px; background-image: url(images/blu4.jpg);" Width="1119px">
        <asp:Label ID="Label2" runat="server" BorderStyle="None" Font-Bold="True" Font-Italic="True"
            Font-Names="Baskerville Old Face" Font-Size="X-Large" Font-Underline="True" ForeColor="#C04000"
            Height="22px" Style="z-index: 100; left: 205px; position: absolute; top: -64px"
            Text="Staff details" Width="219px"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None"
            Height="1px" Style="z-index: 101; left: 27px; position: absolute; top: 13px"
            Width="493px">
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <Columns>
                <asp:CommandField ButtonType="Button" SelectText="MORE" ShowSelectButton="True" />
            </Columns>
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
        <asp:Panel ID="Panel1" runat="server" Height="369px" Style="z-index: 103; left: 538px;
            position: absolute; top: -1px" Visible="False" Width="566px">
            <table style="z-index: 100; left: 14px; width: 544px; position: absolute; top: 43px;
                height: 293px">
                <tr>
                    <td style="width: 202px">
                        <asp:Label ID="Label1" runat="server" Style="z-index: 100; left: 160px; position: absolute;
                            top: 30px" Text="Name" Width="90px" BorderStyle="None"></asp:Label>
                        <asp:TextBox ID="txtname" runat="server" ReadOnly="True" Style="z-index: 101; left: 266px;
                            position: absolute; top: 27px" Width="200px" BorderStyle="None"></asp:TextBox>
                        <asp:Label ID="Label3" runat="server" Style="z-index: 102; left: 155px; position: absolute;
                            top: 96px" Text="Contact No" Width="90px" BorderStyle="None"></asp:Label>
                        <asp:TextBox ID="txtcno" runat="server" ReadOnly="True" Style="z-index: 104; left: 266px;
                            position: absolute; top: 94px" BorderStyle="None"></asp:TextBox>
                    </td>
                    <td style="width: 221px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 202px">
                    </td>
                    <td style="width: 221px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 202px">
                        <asp:Label ID="Label4" runat="server" Style="z-index: 100; left: 157px; position: absolute;
                            top: 172px" Text="Address" Width="88px" BorderStyle="None"></asp:Label>
                        <asp:TextBox ID="txtadd" runat="server" ReadOnly="True" Style="z-index: 102; left: 268px;
                            position: absolute; top: 162px" TextMode="MultiLine" Width="226px" BorderStyle="None"></asp:TextBox>
                    </td>
                    <td style="width: 221px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 202px">
                        <asp:Label ID="Label5" runat="server" Style="z-index: 100; left: 155px; position: absolute;
                            top: 243px" Text="EmailID" Width="91px" BorderStyle="None"></asp:Label>
                        <asp:TextBox ID="txtemail" runat="server" ReadOnly="True" Style="z-index: 102; left: 270px;
                            position: absolute; top: 242px" Width="227px" BorderStyle="None"></asp:TextBox>
                    </td>
                    <td style="width: 221px">
                    </td>
                </tr>
            </table>
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
</asp:Content>

