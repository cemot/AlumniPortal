<%@ Page Language="VB" MasterPageFile="~/admin.master" AutoEventWireup="false" CodeFile="AddStaff.aspx.vb" Inherits="AddStaff" title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />
    <br />
    <br />
    <br />
    <br />
    <asp:Panel ID="Panel2" runat="server" Height="694px" Style="z-index: 109; left: 139px;
        background-image: url(images/0flowers3_sl-designs.jpg); position: absolute; top: 255px"
        Width="1153px">
    <asp:Label ID="Label2" runat="server" BorderStyle="None" Font-Bold="True" Font-Italic="True"
        Font-Names="Baskerville Old Face" Font-Size="X-Large" Font-Underline="True" ForeColor="#C04000"
        Height="22px" Style="z-index: 100; left: 19px; position: absolute; top: 30px"
        Text="Staff Details" Width="243px"></asp:Label>
    <asp:Button ID="btnstaffadd" runat="server" Style="z-index: 101; left: 23px; position: absolute;
        top: 79px; background-color: #ffffff;" Text="Add Staff Details" Width="177px" BorderColor="Gray" BorderStyle="Double" Font-Bold="True" />
    <asp:Button ID="btnreset" runat="server" Style="z-index: 102; left: 396px; position: absolute;
        top: 443px; background-color: #ffffff;" Text="RESET" Visible="False" BorderColor="Gray" BorderStyle="Double" Font-Bold="True" />
    <asp:Button ID="btndelete" runat="server" Height="26px" Style="z-index: 103; left: 291px;
        position: absolute; top: 443px; background-color: #ffffff;" Text="DELETE" Visible="False" Width="74px" BorderColor="Gray" BorderStyle="Double" Font-Bold="True" />
    <asp:Button ID="btnupdate" runat="server" Style="z-index: 104; left: 183px; position: absolute;
        top: 442px; background-color: #ffffff;" Text="UPDATE" Visible="False" BorderColor="Gray" BorderStyle="Double" Font-Bold="True" Height="27px" />
    <asp:Button ID="btnadd" runat="server" Style="z-index: 105; left: 99px; position: absolute;
        top: 443px; background-color: #ffffff;" Text="ADD" Visible="False" BorderColor="Gray" BorderStyle="Double" Font-Bold="True" Height="25px" Width="49px" />
    <asp:Panel ID="Panel1" runat="server" Height="263px" Style="z-index: 106; left: 25px;
        position: absolute; top: 146px" Visible="False" Width="493px">
        <table style="z-index: 100; left: 0px; width: 486px; position: absolute; top: 0px;
            height: 260px">
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label1" runat="server" Style="z-index: 100; left: 47px; position: absolute;
                        top: 25px" Text="Name" Width="154px"></asp:Label>
                    <asp:Label ID="Label3" runat="server" Style="z-index: 101; left: 47px; position: absolute;
                        top: 85px" Text="Contact No" Width="154px"></asp:Label>
                    <asp:Label ID="Label4" runat="server" Style="z-index: 103; left: 42px; position: absolute;
                        top: 159px" Text="Address" Width="154px"></asp:Label>
                </td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtname" runat="server" Style="z-index: 100; left: 259px; position: absolute;
                        top: 26px" Width="195px"></asp:TextBox>
                    <asp:TextBox ID="txtcno" runat="server" Style="z-index: 101; left: 257px; position: absolute;
                        top: 87px" Width="195px" AutoPostBack="True"></asp:TextBox>
                    &nbsp;&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtname"
                        ErrorMessage="Enter only letters" Style="z-index: 104; left: 261px; position: absolute;
                        top: 51px" ValidationExpression="[a-zA-Z]+" Width="133px"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                    <asp:Label ID="lblcno" runat="server" ForeColor="Red" Style="z-index: 100; left: 260px;
                        position: absolute; top: 111px" Text="Input is out of bound" Visible="False"
                        Width="194px"></asp:Label>
                    &nbsp;
                    <asp:Label ID="lblcontact" runat="server" ForeColor="Red" Style="z-index: 102; left: 459px;
                        position: absolute; top: 92px" Text="Enter only letters" Visible="False" Width="103px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtadd" runat="server" Style="z-index: 100; left: 258px; position: absolute;
                        top: 147px" TextMode="MultiLine" Width="195px"></asp:TextBox>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label5" runat="server" Style="z-index: 100; left: 42px; position: absolute;
                        top: 217px" Text="Email ID" Width="154px"></asp:Label>
                </td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtemail" runat="server" Style="z-index: 100; left: 257px; position: absolute;
                        top: 219px" Width="195px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtemail"
                        ErrorMessage="Incorrect Format... Eg:- a@gmail.com" Style="z-index: 102; left: 256px;
                        position: absolute; top: 244px" Width="132px" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None"
        Style="z-index: 108; left: 595px; position: absolute; top: 124px" Width="552px">
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <Columns>
            <asp:CommandField ButtonType="Button" HeaderText="VIEW" SelectText="VIEW" ShowSelectButton="True">
                <HeaderStyle HorizontalAlign="Left" />
            </asp:CommandField>
        </Columns>
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" HorizontalAlign="Left" />
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
</asp:Content>

