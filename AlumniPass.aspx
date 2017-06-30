<%@ Page Language="VB" MasterPageFile="~/Alumni.master" AutoEventWireup="false" CodeFile="AlumniPass.aspx.vb" Inherits="AlumniPass" title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="512px" Style="z-index: 100; left: 144px;
        position: absolute; top: 258px; background-image: url(images/blu4.jpg);" Width="1119px">
        <asp:Label ID="Label2" runat="server" BorderStyle="None" Font-Bold="True" Font-Italic="True"
            Font-Names="Baskerville Old Face" Font-Size="X-Large" Font-Underline="True" ForeColor="#C04000"
            Height="22px" Style="z-index: 100; left: 100px; position: absolute; top: 40px"
            Text="Change Password" Width="236px"></asp:Label>
        <table style="z-index: 103; left: 41px; width: 538px; position: absolute; top: 105px;
            height: 213px">
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label1" runat="server" Style="z-index: 100; left: 72px; position: absolute;
                        top: 27px" Text="Current Password" Width="172px"></asp:Label>
                    <asp:Label ID="Label3" runat="server" Style="z-index: 102; left: 71px; position: absolute;
                        top: 100px" Text="New Password" Width="172px"></asp:Label>
                </td>
                <td style="width: 100px">
                    <asp:Label ID="lblpwerror" runat="server" ForeColor="Red" Style="z-index: 100; left: 477px;
                        position: absolute; top: 27px" Text="Wrong Password...!" Visible="False" Width="139px"></asp:Label>
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
                    <asp:Label ID="Label4" runat="server" Style="z-index: 100; left: 72px; position: absolute;
                        top: 169px" Text="Confirm Password" Width="172px"></asp:Label>
                    <asp:TextBox ID="txtcpass" runat="server" AutoPostBack="True" Style="z-index: 101;
                        left: 295px; position: absolute; top: 26px" Width="169px"></asp:TextBox>
                    <asp:TextBox ID="txtnpass" runat="server" Style="z-index: 103; left: 293px; position: absolute;
                        top: 98px" TextMode="Password" Width="169px"></asp:TextBox>
                </td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtconfirm" runat="server" Style="z-index: 100; left: 296px; position: absolute;
                        top: 164px" TextMode="Password" Width="169px"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtnpass"
                        ControlToValidate="txtconfirm" ErrorMessage="Password Mismatch" Style="z-index: 102;
                        left: 481px; position: absolute; top: 166px" Width="150px"></asp:CompareValidator>
                </td>
            </tr>
        </table>
        <asp:Button ID="btnupdate" runat="server" Style="z-index: 101; left: 214px; position: absolute;
            top: 350px; background-color: #ffffff;" Text="UPDATE" BorderColor="Gray" BorderStyle="Double" Font-Bold="True" />
        <asp:Button ID="btnrefresh" runat="server" Style="z-index: 104; left: 336px; position: absolute;
            top: 352px; background-color: #ffffff;" Text="REFRESH" BorderColor="Gray" BorderStyle="Double" Font-Bold="True" />
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
</asp:Content>

