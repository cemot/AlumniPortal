<%@ Page Language="VB" AutoEventWireup="false" CodeFile="OldRegister.aspx.vb" Inherits="OldRegister" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Almini Portal</title>
    <style type="text/css">
        .style1
        {
            color: #CCFFFF;
        }
        .style2
        {
            color: #FFFFFF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Panel ID="Panel1" runat="server" Height="868px" Style="z-index: 100; left: 3px;
            position: absolute; top: 3px; background-color: #ccccff;" Width="1368px" 
            BackImageUrl="~/images/black.jpg">
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
            <table style="z-index: 102; left: 348px; width: 564px; position: absolute; top: 109px; color: #FFFFFF;">
                <tr>
                    <td style="width: 100px; height: 36px">
                        <asp:Label ID="Label1" runat="server" Height="18px" Style="z-index: 100; left: 20px;
                            position: absolute; top: 12px" Text="Name" Width="147px"></asp:Label>
                    </td>
                    <td style="width: 100px; height: 36px">
                        <asp:TextBox ID="txtname" runat="server" Style="z-index: 100; width: 220px; left: 233px; position: absolute;
                            top: 9px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname"
                            ErrorMessage="*" Style="z-index: 101; left: 394px; position: absolute; top: 9px"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtname"
                            ErrorMessage="Invalid input" Style="z-index: 103; left: 418px; position: absolute;
                            top: 8px" ValidationExpression="[a-zA-Z]+" Width="95px"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px; height: 40px">
                        <asp:Label ID="Address" runat="server" Style="z-index: 100; left: 20px; position: absolute;
                            top: 56px" Text="Address" Width="142px"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="ddlyear1"
                            ErrorMessage="*" Style="z-index: 102; left: 434px; position: absolute; top: 377px"></asp:RequiredFieldValidator>
                    </td>
                    <td style="width: 100px; height: 40px">
                        <asp:TextBox ID="txtadd" runat="server" Style="z-index: 100; left: 233px; position: absolute;
                            top: 42px" TextMode="MultiLine" TabIndex="1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtadd"
                            ErrorMessage="*" Style="z-index: 101; left: 422px; position: absolute; top: 48px"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtcno"
                            ErrorMessage="Not within a bound" Style="z-index: 103; left: 425px; position: absolute;
                            top: 423px" ValidationExpression="\d{10}" Width="118px"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px; height: 38px">
                        <asp:Label ID="Label2" runat="server" Style="z-index: 100; left: 20px; position: absolute;
                            top: 101px" Text="Register No." Width="135px"></asp:Label>
                    </td>
                    <td style="width: 100px; height: 38px">
                        <asp:TextBox ID="txtrno" runat="server" Style="z-index: 100; left: 233px; position: absolute;
                            top: 99px" Width="153px" TabIndex="2"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtrno"
                            ErrorMessage="*" Style="z-index: 101; left: 403px; position: absolute; top: 101px"></asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddldate"
                            ErrorMessage="*" Style="z-index: 102; left: 429px; position: absolute; top: 147px"></asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddlmonth"
                            ErrorMessage="*" Style="z-index: 103; left: 430px; position: absolute; top: 148px"></asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ddlyear"
                            ErrorMessage="*" Style="z-index: 104; left: 430px; position: absolute; top: 147px"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtrno"
                            ErrorMessage="Invalid input" Style="z-index: 106; left: 427px; position: absolute;
                            top: 102px" ValidationExpression="[0-9]*" Width="112px"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px; height: 42px">
                        <asp:Label ID="Label3" runat="server" Style="z-index: 100; left: 20px; position: absolute;
                            top: 148px" Text="Joining Date" Width="134px"></asp:Label>
                    </td>
                    <td style="width: 100px; height: 42px">
                        <asp:DropDownList ID="ddldate" runat="server" Style="z-index: 100; left: 233px; position: absolute;
                            top: 147px" Width="43px" TabIndex="3">
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                        <asp:DropDownList ID="ddlmonth" runat="server" Style="z-index: 101; left: 288px;
                            position: absolute; top: 147px" Width="57px" TabIndex="4">
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                        <asp:DropDownList ID="ddlyear" runat="server" Style="z-index: 103; left: 357px; position: absolute;
                            top: 147px" Width="65px" TabIndex="5">
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px; height: 44px">
                        <asp:Label ID="Label13" runat="server" Style="z-index: 100; left: 20px; position: absolute;
                            top: 188px" Text="UserName" Width="134px"></asp:Label>
                    </td>
                    <td style="width: 100px; height: 44px">
                        <asp:TextBox ID="txtuname" runat="server" Style="z-index: 100; left: 233px; position: absolute;
                            top: 185px" Width="161px" AutoPostBack="True" TabIndex="6"></asp:TextBox>
                        <asp:TextBox ID="txtpw" runat="server" Style="z-index: 101; left: 233px; position: absolute;
                            top: 233px" Width="161px" TabIndex="7" TextMode="Password"></asp:TextBox>
                        <asp:TextBox ID="txtconfmpw" runat="server" Style="z-index: 102; left: 233px; position: absolute;
                            top: 282px" TabIndex="8" TextMode="Password" Width="161px"></asp:TextBox>
                        <asp:Label ID="lbluser" runat="server" BorderStyle="None" Font-Bold="True" Font-Italic="True"
                            Font-Names="Bell MT" ForeColor="Red" Style="z-index: 104; left: 431px; position: absolute;
                            top: 186px" Text="username already exists" Visible="False" Width="187px"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px; height: 44px">
                        <asp:Label ID="Label4" runat="server" Style="z-index: 100; left: 20px; position: absolute;
                            top: 332px" Text="Email ID" Width="134px"></asp:Label>
                        <asp:Label ID="Label12" runat="server" Style="z-index: 102; left: 20px; position: absolute;
                            top: 233px" Text="Password" Width="134px"></asp:Label>
                    </td>
                    <td style="width: 100px; height: 44px">
                        <asp:TextBox ID="txtemail" runat="server" Style="z-index: 100; left: 233px; position: absolute;
                            top: 329px" Width="161px" TabIndex="9"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtuname"
                            ErrorMessage="*" Style="z-index: 101; left: 409px; position: absolute; top: 186px"></asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtpw"
                            ErrorMessage="*" Style="z-index: 103; left: 417px; position: absolute; top: 236px"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px; height: 44px">
                        <asp:Label ID="Label14" runat="server" Style="z-index: 100; left: 20px; position: absolute;
                            top: 285px" Text="Confirm Password" Width="134px"></asp:Label>
                    </td>
                    <td style="width: 100px; height: 44px">
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpw"
                            ControlToValidate="txtconfmpw" ErrorMessage="Password Missmatch" Style="z-index: 100;
                            left: 407px; position: absolute; top: 283px" Width="138px"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px; height: 44px">
                    </td>
                    <td style="width: 100px; height: 44px">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="ddlmonth1"
                            ErrorMessage="*" Style="z-index: 100; left: 433px; position: absolute; top: 375px"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtemail"
                            ErrorMessage="Incorrect format" Style="z-index: 102; left: 407px; position: absolute;
                            top: 329px" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                            Width="133px"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px; height: 41px">
                        <asp:Label ID="Label5" runat="server" Style="z-index: 100; left: 20px; position: absolute;
                            top: 375px" Text="Date Of Birth" Width="125px"></asp:Label>
                    </td>
                    <td style="width: 100px; height: 41px">
                        <asp:DropDownList ID="ddldate1" runat="server" Style="z-index: 100; left: 233px;
                            position: absolute; top: 373px" Width="47px" TabIndex="10">
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                        <asp:DropDownList ID="ddlmonth1" runat="server" Style="z-index: 101; left: 293px;
                            position: absolute; top: 373px" Width="57px" TabIndex="11">
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                        <asp:DropDownList ID="ddlyear1" runat="server" Style="z-index: 102; left: 362px;
                            position: absolute; top: 373px" Width="65px" TabIndex="12">
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="ddldate1"
                            ErrorMessage="*" Style="z-index: 104; left: 434px; position: absolute; top: 376px"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px; height: 44px">
                        <asp:Label ID="Label6" runat="server" Style="z-index: 100; left: 20px; position: absolute;
                            top: 422px" Text="Contact No" Width="123px"></asp:Label>
                    </td>
                    <td style="width: 100px; height: 44px">
                        <asp:TextBox ID="txtcno" runat="server" Style="z-index: 100; left: 233px; position: absolute;
                            top: 419px" Width="153px" TabIndex="13"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtcno"
                            ErrorMessage="*" Style="z-index: 101; left: 402px; position: absolute; top: 422px"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtcno"
                            ErrorMessage="Invalid input" Style="z-index: 103; left: 422px; position: absolute;
                            top: 421px" ValidationExpression="[0-9]*" Width="95px"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px; height: 48px">
                        <asp:Label ID="Label7" runat="server" Style="z-index: 100; left: 20px; position: absolute;
                            top: 473px" Text="Gender" Width="123px"></asp:Label>
                    </td>
                    <td style="width: 100px; height: 48px">
                        <asp:RadioButtonList ID="rblgender" runat="server" RepeatDirection="Horizontal" Style="z-index: 100;
                            left: 233px; position: absolute; top: 471px" Width="212px" TabIndex="14">
                            <asp:ListItem>MALE</asp:ListItem>
                            <asp:ListItem>FEMALE</asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="rblgender"
                            ErrorMessage="*" Style="z-index: 102; left: 453px; position: absolute; top: 472px"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px; height: 39px">
                        <asp:Label ID="Label8" runat="server" Style="z-index: 100; left: 20px; position: absolute;
                            top: 520px" Text="Qualification" Width="123px"></asp:Label>
                    </td>
                    <td style="width: 100px; height: 39px">
                        <asp:TextBox ID="txtqual" runat="server" Style="z-index: 100; left: 233px; position: absolute;
                            top: 518px" Width="202px" TabIndex="15"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtqual"
                            ErrorMessage="*" Style="z-index: 102; left: 450px; position: absolute; top: 521px"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px; height: 40px">
                        <asp:Label ID="Label9" runat="server" Style="z-index: 100; left: 20px; position: absolute;
                            top: 563px" Text="Works At" Width="123px"></asp:Label>
                    </td>
                    <td style="width: 100px; height: 40px">
                        <asp:TextBox ID="txtwork" runat="server" Style="z-index: 100; left: 233px; position: absolute;
                            top: 563px" Width="202px" TabIndex="16"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px; height: 51px">
                        <asp:Label ID="Label10" runat="server" Style="z-index: 100; left: 20px; position: absolute;
                            top: 614px" Text="Designation" Width="127px"></asp:Label>
                        <asp:Label ID="Label11" runat="server" Style="z-index: 101; left: 20px; position: absolute;
                            top: 670px" Text="Upload Photo" Width="121px"></asp:Label>
                        <asp:FileUpload ID="FileUpload1" runat="server" Style="z-index: 103; left: 238px;
                            position: absolute; top: 668px" />
                    </td>
                    <td style="width: 100px; height: 51px">
                        <asp:TextBox ID="txtdesig" runat="server" Style="z-index: 100; left: 233px; position: absolute;
                            top: 612px" Width="202px" TabIndex="17"></asp:TextBox>
                    </td>
                </tr>
            </table>
            &nbsp; &nbsp;<br />
            <br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;<span style="font-size: 32pt; font-family: Pristina; text-decoration: underline"><strong><em><span 
                class="style2">Alu</span><span class="style1">mini Registration</span></em></strong></span><br 
                class="style1" />
            <br class="style1" />
            <br class="style1" />
            <br class="style1" />
            <br class="style1" />
            <br class="style1" />
            <span class="style1">
            <asp:HyperLink ID="HyperLink1" runat="server" Font-Italic="True" 
                Font-Names="Bookman Old Style" NavigateUrl="~/login.aspx" Style="z-index: 103; left: 1186px; position: absolute;
                top: 40px" Width="152px">Back to login page</asp:HyperLink>
            </span>
            <br class="style1" />
            <br class="style1" />
            <br class="style1" />
            <br class="style1" />
            <br class="style1" />
            <br class="style1" />
            <br class="style1" />
            <br class="style1" />
            <br class="style1" />
            <br class="style1" />
            <br class="style1" />
            <br class="style1" />
            <br class="style1" />
            <br class="style1" />
            <br class="style1" />
            <br class="style1" />
            <br class="style1" />
            <br class="style1" />
            <br class="style1" />
            <br class="style1" />
            <br class="style1" />
            <br class="style1" />
            <br class="style1" />
            <br class="style1" />
            <br class="style1" />
            <br class="style1" />
            <br class="style1" />
            <span class="style1">
            <asp:Button ID="btnsave" runat="server" BackColor="White" BorderColor="Gray" 
                BorderStyle="Double" Font-Bold="True" Height="36px" Style="z-index: 101;
                left: 509px; position: absolute; top: 817px" TabIndex="18" Text="REGISTER" 
                Width="95px" />
            </span>
        </asp:Panel>
        &nbsp;</div>
    </form>
</body>
</html>
