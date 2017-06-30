<%@ Page Language="VB" MasterPageFile="~/Alumni.master" AutoEventWireup="false" CodeFile="CurrentProfile.aspx.vb" Inherits="CurrentProfile" title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp; &nbsp;
    <br />
    <br />
    <asp:Panel ID="Panel2" runat="server" Height="609px" Style="z-index: 104; left: 144px;
        background-image: url(images/blu4.jpg); position: absolute; top: 343px"
        Width="1119px">
    <asp:Label ID="Label6" runat="server" BorderStyle="None" Font-Bold="True" Font-Italic="True"
        Font-Names="Baskerville Old Face" Font-Size="X-Large" Font-Underline="True" ForeColor="Purple"
        Style="z-index: 100; left: 217px; position: absolute; top: -36px; background-color: transparent"
        Text="My Profile" Width="128px"></asp:Label>
    <asp:Panel ID="Panel1" runat="server" Height="347px" Style="z-index: 101; left: 154px;
        position: absolute; top: 6px" Width="720px">
        <br />
        <br />
        <br />
        <br />
        <br />
        <table style="z-index: 100; left: 94px; width: 596px; position: absolute; top: 38px;
            height: 398px">
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label1" runat="server" Style="z-index: 100; left: 160px; position: absolute;
                        top: 22px" Text="Name" Width="110px"></asp:Label>
                    <asp:TextBox ID="txtname" runat="server" Style="z-index: 101; left: 303px; position: absolute;
                        top: 21px" Width="247px" BorderStyle="None"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname"
                        ErrorMessage="*" Height="10px" Style="z-index: 103; left: 569px; position: absolute;
                        top: 23px" Width="11px"></asp:RequiredFieldValidator>
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label2" runat="server" Style="z-index: 100; left: 159px; position: absolute;
                        top: 74px" Text="Reg No" Width="119px"></asp:Label>
                    <asp:TextBox ID="txtrno" runat="server" Style="z-index: 101; left: 303px; position: absolute;
                        top: 72px" Width="247px" BorderStyle="None"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtrno"
                        ErrorMessage="*" Height="10px" Style="z-index: 102; left: 569px; position: absolute;
                        top: 69px" Width="11px"></asp:RequiredFieldValidator>
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:TextBox ID="txtadd" runat="server" Style="z-index: 100; left: 303px; position: absolute;
                        top: 121px" TextMode="MultiLine" Width="247px" BorderStyle="None"></asp:TextBox>
                    <asp:Label ID="Label3" runat="server" Style="z-index: 101; left: 157px; position: absolute;
                        top: 131px" Text="Address" Width="119px"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtadd"
                        ErrorMessage="*" Height="10px" Style="z-index: 103; left: 568px; position: absolute;
                        top: 133px" Width="11px"></asp:RequiredFieldValidator>
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label4" runat="server" Style="z-index: 100; left: 156px; position: absolute;
                        top: 191px" Text="E-mail ID" Width="120px"></asp:Label>
                    <asp:TextBox ID="txtemail" runat="server" Style="z-index: 101; left: 302px; position: absolute;
                        top: 189px" Width="247px" BorderStyle="None"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtemail"
                        ErrorMessage="*" Height="10px" Style="z-index: 102; left: 565px; position: absolute;
                        top: 187px" Width="11px"></asp:RequiredFieldValidator>
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label7" runat="server" Style="z-index: 100; left: 156px; position: absolute;
                        top: 248px" Text="Phone No" Width="117px"></asp:Label>
                    <asp:TextBox ID="txtphone" runat="server" Style="z-index: 101; left: 302px; position: absolute;
                        top: 245px" Width="247px" BorderStyle="None"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtphone"
                        ErrorMessage="*" Height="10px" Style="z-index: 102; left: 567px; position: absolute;
                        top: 246px" Width="11px"></asp:RequiredFieldValidator>
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label8" runat="server" Style="z-index: 100; left: 154px; position: absolute;
                        top: 305px" Text="Date Of Birth" Width="111px"></asp:Label>
                </td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtdob" runat="server" Style="z-index: 100; left: 304px; position: absolute;
                        top: 306px" Width="237px" BorderStyle="None"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label9" runat="server" Style="z-index: 100; left: 154px; position: absolute;
                        top: 361px" Text="Student Class" Width="121px"></asp:Label>
                    <asp:TextBox ID="txtclass" runat="server" Style="z-index: 101; left: 306px; position: absolute;
                        top: 354px" Width="247px" BorderStyle="None"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtclass"
                        ErrorMessage="*" Height="10px" Style="z-index: 103; left: 565px; position: absolute;
                        top: 356px" Width="11px"></asp:RequiredFieldValidator>
                </td>
                <td style="width: 100px">
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
        <asp:Button ID="btnupdate" runat="server" Font-Bold="True" Height="32px" Style="z-index: 101;
            left: 344px; position: absolute; top: 464px; background-color: #ffffff;" Text="UPDATE" Width="87px" BorderColor="Gray" BorderStyle="Double" />
    </asp:Panel>
    <asp:Label ID="Label12" runat="server" BorderStyle="None" Font-Bold="True" Font-Italic="True"
        Font-Names="Baskerville Old Face" Font-Size="X-Large" Font-Underline="False"
        ForeColor="#C00000" Style="z-index: 102; left: 377px; position: absolute; top: -38px;
        background-color: transparent" Text="Your profile details has been modified..."
        Visible="False" Width="474px"></asp:Label>
        &nbsp;
        <asp:LinkButton ID="lbpicchange" runat="server" Font-Bold="True" Font-Size="Medium"
            Font-Underline="True" ForeColor="Navy" Style="z-index: 103; left: 12px; position: absolute;
            top: 13px" Width="102px">Change pic</asp:LinkButton>
        <asp:FileUpload ID="FileUpload1" runat="server" Style="z-index: 104; left: 3px; position: absolute;
            top: 71px" Visible="False" />
        <asp:Button ID="btnsave" runat="server" BackColor="White" BorderColor="Gray" BorderStyle="Double"
            Font-Bold="True" Style="z-index: 106; left: 42px; position: absolute; top: 104px"
            Text="Save " Visible="False" />
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

