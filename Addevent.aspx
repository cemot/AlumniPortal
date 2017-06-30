<%@ Page Language="VB" MasterPageFile="~/admin.master" AutoEventWireup="false" CodeFile="Addevent.aspx.vb" Inherits="Addevent" title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    <asp:Panel ID="Panel1" runat="server" Height="708px" Style="z-index: 106; left: 139px;
        background-image: url(images/0flowers3_sl-designs.jpg); position: absolute; top: 253px"
        Width="1153px">
    <asp:Label ID="Label2" runat="server" BorderStyle="None" Font-Bold="True" Font-Italic="True"
        Font-Names="Baskerville Old Face" Font-Size="X-Large" Font-Underline="True" ForeColor="#C04000"
        Height="22px" Style="z-index: 100; left: 17px; position: absolute; top: 23px"
        Text="Add Events" Width="174px"></asp:Label>
    <table style="z-index: 105; left: 17px; width: 598px; position: absolute; top: 76px;
        height: 338px">
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label1" runat="server" Height="21px" Style="z-index: 100; left: 61px;
                    position: absolute; top: 23px" Text="Title" Width="182px"></asp:Label>
                <asp:Label ID="Label3" runat="server" Height="21px" Style="z-index: 101; left: 60px;
                    position: absolute; top: 71px" Text="Description" Width="182px"></asp:Label>
                <asp:Label ID="Label4" runat="server" Height="21px" Style="z-index: 102; left: 58px;
                    position: absolute; top: 132px" Text="Location" Width="182px"></asp:Label>
                <asp:Label ID="Label5" runat="server" Height="21px" Style="z-index: 103; left: 55px;
                    position: absolute; top: 192px" Text="Event Date" Width="182px"></asp:Label>
                <asp:Label ID="Label6" runat="server" Height="21px" Style="z-index: 105; left: 58px;
                    position: absolute; top: 242px" Text="Time" Width="182px"></asp:Label>
            </td>
            <td style="width: 100px">
                <asp:TextBox ID="txttitle" runat="server" Style="z-index: 100; left: 321px; position: absolute;
                    top: 23px" Width="240px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
                <asp:TextBox ID="txtdescrip" runat="server" Height="32px" Style="z-index: 100; left: 322px;
                    position: absolute; top: 62px" TextMode="MultiLine" Width="240px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
                <asp:TextBox ID="txtloc" runat="server" Style="z-index: 100; left: 321px; position: absolute;
                    top: 122px" TextMode="MultiLine" Width="240px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
                <asp:TextBox ID="txttime" runat="server" Style="z-index: 100; left: 324px; position: absolute;
                    top: 242px" Width="240px"></asp:TextBox>
                &nbsp;
                <asp:TextBox ID="txtdate" runat="server" Style="z-index: 102; left: 326px; position: absolute;
                    top: 192px" Width="224px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label7" runat="server" Height="21px" Style="z-index: 100; left: 59px;
                    position: absolute; top: 298px" Text="Status" Width="182px"></asp:Label>
            </td>
            <td style="width: 100px">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <asp:DropDownList ID="ddlstatus" runat="server" Style="z-index: 100; left: 328px;
                    position: absolute; top: 296px" Width="106px">
                    <asp:ListItem>SELECT</asp:ListItem>
                    <asp:ListItem>OPEN</asp:ListItem>
                    <asp:ListItem>CLOSE</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
    </table>
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None"
        Height="119px" Style="z-index: 101; left: 637px; position: absolute; top: 119px"
        Width="484px">
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <Columns>
            <asp:CommandField ButtonType="Button" SelectText="VIEW" ShowSelectButton="True">
                <ItemStyle HorizontalAlign="Left" />
                <HeaderStyle HorizontalAlign="Left" />
            </asp:CommandField>
        </Columns>
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" HorizontalAlign="Left" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView><asp:Button ID="btnreset" runat="server" Font-Bold="True" Height="31px" Style="z-index: 102;
            left: 371px; position: absolute; top: 452px; background-color: #ffffff;" Text="RESET" Width="78px" BorderColor="Gray" BorderStyle="Double" />
        <asp:Button ID="btnupdate" runat="server" Font-Bold="True" Height="31px" Style="z-index: 103;
            left: 235px; position: absolute; top: 452px; background-color: #ffffff;" Text="UPDATE" Width="75px" BorderColor="Gray" BorderStyle="Double" />
        <asp:Button ID="btnadd" runat="server" Font-Bold="True" Height="32px" Style="z-index: 106;
            left: 107px; position: absolute; top: 452px; background-color: #ffffff;" Text="ADD" Width="72px" BorderColor="Gray" BorderStyle="Double" />
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

