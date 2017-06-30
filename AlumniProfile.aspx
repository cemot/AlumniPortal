<%@ Page Language="VB" MasterPageFile="~/Alumni.master" AutoEventWireup="false" CodeFile="AlumniProfile.aspx.vb" Inherits="AlumniProfile" title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;&nbsp;
    <asp:Panel ID="Panel2" runat="server" Height="657px" Style="z-index: 104; left: 144px;
        background-image: url(images/blu4.jpg); position: absolute; top: 343px"
        Width="1119px">
    <asp:Panel ID="Panel1" runat="server" Height="344px" Style="z-index: 100; left: 262px;
        position: absolute; top: -6px" Width="769px">
        &nbsp;
        <br />
        <br />
        <br />
        <br />
        <table style="z-index: 100; left: 65px; width: 615px; position: absolute; top: 7px;
            height: 559px">
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label1" runat="server" Height="18px" Style="z-index: 100; left: 132px;
                        position: absolute; top: 21px" Text="Name" Width="147px"></asp:Label>
                    <asp:TextBox ID="txtname" runat="server" Style="z-index: 102; left: 321px; position: absolute;
                        top: 18px" Width="207px" BorderStyle="None"></asp:TextBox>
                </td>
                <td style="width: 100px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname"
                        ErrorMessage="*" Style="z-index: 100; left: 543px; position: absolute; top: 20px"
                        Width="20px"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Address" runat="server" Style="z-index: 100; left: 134px; position: absolute;
                        top: 65px" Text="Address" Width="142px"></asp:Label>
                    <asp:TextBox ID="txtadd" runat="server" Style="z-index: 102; left: 323px; position: absolute;
                        top: 56px" TabIndex="1" TextMode="MultiLine" Width="204px" BorderStyle="None"></asp:TextBox>
                </td>
                <td style="width: 100px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtadd"
                        ErrorMessage="*" Style="z-index: 100; left: 545px; position: absolute; top: 65px"
                        Width="20px"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label2" runat="server" Style="z-index: 100; left: 133px; position: absolute;
                        top: 118px" Text="Register No." Width="140px"></asp:Label>
                    <asp:TextBox ID="txtrno" runat="server" Style="z-index: 102; left: 325px; position: absolute;
                        top: 117px" TabIndex="2" Width="155px" BorderStyle="None"></asp:TextBox>
                </td>
                <td style="width: 100px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtrno"
                        ErrorMessage="*" Style="z-index: 100; left: 493px; position: absolute; top: 116px"
                        Width="20px"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label3" runat="server" Style="z-index: 100; left: 133px; position: absolute;
                        top: 164px" Text="Joining Date" Width="140px"></asp:Label>
                    <asp:TextBox ID="txtjoindate" runat="server" Style="z-index: 102; left: 326px; position: absolute;
                        top: 163px" BorderStyle="None"></asp:TextBox>
                </td>
                <td style="width: 100px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtjoindate"
                        ErrorMessage="*" Style="z-index: 100; left: 495px; position: absolute; top: 166px"
                        Width="20px"></asp:RequiredFieldValidator>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label4" runat="server" Style="z-index: 100; left: 134px; position: absolute;
                        top: 219px" Text="Email ID" Width="134px"></asp:Label>
                    <asp:TextBox ID="txtemail" runat="server" Style="z-index: 102; left: 326px; position: absolute;
                        top: 217px" TabIndex="9" Width="259px" BorderStyle="None"></asp:TextBox>
                </td>
                <td style="width: 100px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtemail"
                        ErrorMessage="*" Style="z-index: 100; left: 597px; position: absolute; top: 216px"
                        Width="20px"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label5" runat="server" Style="z-index: 100; left: 131px; position: absolute;
                        top: 269px" Text="Date Of Birth" Width="125px"></asp:Label>
                    <asp:TextBox ID="txtdob" runat="server" Style="z-index: 102; left: 329px; position: absolute;
                        top: 264px" BorderStyle="None"></asp:TextBox>
                </td>
                <td style="width: 100px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtdob"
                        ErrorMessage="*" Style="z-index: 100; left: 489px; position: absolute; top: 264px"
                        Width="20px"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label7" runat="server" Style="z-index: 100; left: 129px; position: absolute;
                        top: 320px" Text="Contact No" Width="123px"></asp:Label>
                    <asp:TextBox ID="txtcno" runat="server" Style="z-index: 102; left: 326px; position: absolute;
                        top: 319px" TabIndex="13" Width="157px" BorderStyle="None"></asp:TextBox>
                </td>
                <td style="width: 100px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtcno"
                        ErrorMessage="*" Style="z-index: 100; left: 495px; position: absolute; top: 320px"
                        Width="20px"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label8" runat="server" Style="z-index: 100; left: 133px; position: absolute;
                        top: 372px" Text="Gender" Width="123px"></asp:Label>
                    &nbsp;
                </td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtgender" runat="server" BorderStyle="None" Style="z-index: 100;
                        left: 332px; position: absolute; top: 372px" TabIndex="13" Width="157px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label9" runat="server" Style="z-index: 100; left: 131px; position: absolute;
                        top: 425px" Text="Qualification" Width="123px"></asp:Label>
                    <asp:TextBox ID="txtqual" runat="server" Style="z-index: 102; left: 326px; position: absolute;
                        top: 424px" TabIndex="15" Width="202px" BorderStyle="None"></asp:TextBox>
                </td>
                <td style="width: 100px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtqual"
                        ErrorMessage="*" Style="z-index: 100; left: 540px; position: absolute; top: 423px"
                        Width="20px"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label10" runat="server" Style="z-index: 100; left: 133px; position: absolute;
                        top: 475px" Text="Works At" Width="123px"></asp:Label>
                    <asp:TextBox ID="txtwork" runat="server" Style="z-index: 102; left: 327px; position: absolute;
                        top: 470px" TabIndex="16" Width="202px" BorderStyle="None"></asp:TextBox>
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label11" runat="server" Style="z-index: 100; left: 135px; position: absolute;
                        top: 526px" Text="Designation" Width="127px"></asp:Label>
                    <asp:TextBox ID="txtdesig" runat="server" Style="z-index: 102; left: 328px; position: absolute;
                        top: 521px" TabIndex="17" Width="202px" BorderStyle="None"></asp:TextBox>
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
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="btnupdate" runat="server" Font-Bold="True" Height="33px" Style="z-index: 101;
            left: 324px; position: absolute; top: 572px; background-color: #ffffff;" Text="UPDATE" Width="109px" BorderColor="Gray" BorderStyle="Double" />
        <br />
    </asp:Panel>
    <asp:Label ID="Label6" runat="server" BorderStyle="None" Font-Bold="True" Font-Italic="True"
        Font-Names="Baskerville Old Face" Font-Size="X-Large" Font-Underline="True" ForeColor="Purple"
        Style="z-index: 101; left: 265px; position: absolute; top: -43px; background-color: transparent"
        Text="My Profile" Width="128px"></asp:Label>
    <asp:Label ID="Label12" runat="server" BorderStyle="None" Font-Bold="True" Font-Italic="True"
        Font-Names="Baskerville Old Face" Font-Size="X-Large" Font-Underline="False"
        ForeColor="#C00000" Style="z-index: 102; left: 455px; position: absolute; top: -42px;
        background-color: transparent" Text="Your profile details has been modified..."
        Visible="False" Width="474px"></asp:Label>
        <asp:LinkButton ID="lbpicchange" runat="server" Font-Bold="True" Font-Size="Medium"
            Font-Underline="True" ForeColor="Navy" Style="z-index: 103; left: 25px; position: absolute;
            top: 6px" Width="102px">Change pic</asp:LinkButton>
        <asp:FileUpload ID="FileUpload1" runat="server" Style="z-index: 104; left: 9px; position: absolute;
            top: 45px" Visible="False" />
        <asp:Button ID="btnsave" runat="server" BackColor="White" BorderColor="Gray" BorderStyle="Double"
            Font-Bold="True" Style="z-index: 106; left: 54px; position: absolute; top: 76px"
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
    <br />
    <br />
</asp:Content>

