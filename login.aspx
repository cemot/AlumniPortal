

<%@ Page Language="VB" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body >
    <form id="form1" runat="server">
    <div>
        <asp:Panel ID="Panel1" runat="server" BackColor="#0099FF" Height="772px" Style="z-index: 100;
            left: 0px; position: absolute; top: 2px" Width="1439px" 
            BackImageUrl="~/images/black.jpg">
            &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;<br />
            <span style="color: #ff6600"><strong><span style="font-size: 36pt"><em>&nbsp;&nbsp;<asp:Image 
                ID="Image1" runat="server" Height="148px" ImageUrl="~/images/url1.jpeg"
                                
                Style="z-index: 100; left: 14px; position: absolute; top: 12px" 
                Width="208px" /></em></span><span
                style="font-size: 36pt">
            <em style="font-family: Georgia; font-size: medium; font-weight: bold; font-style: italic; position: absolute; top: 17px; left: 166px; color: #0000FF;"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <asp:Image ID="Image2" runat="server" ImageUrl="~/images/sri.jpeg"
                                
                
                
                Style="z-index: 104; left: 697px; position: absolute; top: -18px; width: 250px; height: 135px;" />
                <br />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; <span style="color: #990033">
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        <span style="font-size: 48pt"><span style="color: #0000FF">
                        &nbsp;<span>Alumni Portal</span></span></span></span><span
                            style="font-size: 48pt; color: #ff3366"> </span>
                </em></span>&nbsp;
                <br />
                <strong>
            <marquee direction="right" style="z-index: 103; left: 226px; width: 972px; position: absolute;
                    top: 139px"><span style="FONT-SIZE: 16pt; COLOR: #ff66ff">UNIVERSITY VISVESWARAYA COLLEGE OF ENGINEERING</span></marquee></strong><br />
                <br />
                <asp:Panel ID="Panel2" runat="server" BorderColor="LightSalmon" BorderStyle="Inset"
                    Height="311px" Style="z-index: 102; left: 287px; position: absolute; top: 196px"
                    Width="667px">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                    <asp:Label ID="Label4" runat="server" ForeColor="Red" Style="z-index: 100; left: 283px;
                        position: absolute; top: 230px" Text="Invalid username or password" Visible="False"
                        Width="206px"></asp:Label>
                    &nbsp;<br />
                    &nbsp;<br />
                    <br />
                    &nbsp; &nbsp; &nbsp; &nbsp; 
                    <asp:Image ID="Image3" runat="server" Height="84px" ImageUrl="~/images/canstock5030334.jpg"
                        Style="z-index: 101; left: 15px; position: absolute; top: 10px" Width="126px" />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span style="color: #990033">&nbsp;</span><span
                        style="font-size: 24pt"><span style="color: #990033">&nbsp;<span style="text-decoration: underline"> </span><span>
                        <span style="text-decoration: underline">Login Here</span> </span>
                    &nbsp; </span>
                        &nbsp; </span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<span
                        style="font-size: 16pt; color: #ff33ff"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; </span>
                    <asp:Label ID="Label1" runat="server" Font-Size="16pt" Style="z-index: 103; left: 91px;
                        position: absolute; top: 110px" Text="Username"></asp:Label>
                    <asp:Label ID="Label2" runat="server" Font-Size="16pt" Style="z-index: 104; left: 88px;
                        position: absolute; top: 169px" Text="Passward"></asp:Label>
                    <asp:TextBox ID="txtusername" runat="server" Style="z-index: 105; left: 216px; position: absolute;
                        top: 112px"></asp:TextBox>
                    <asp:TextBox ID="txtpasswrd" runat="server" Style="z-index: 106; left: 214px; position: absolute;
                        top: 170px" TextMode="Password" Width="149px"></asp:TextBox>
                    <asp:Button ID="btnsignin" runat="server" Height="33px" Style="z-index: 107; left: 196px;
                        position: absolute; top: 224px" Text="Sign In" Width="79px" BackColor="White" BorderColor="Gray" BorderStyle="Double" Font-Bold="True" />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    <span style="color: #ff6600"><strong>
                    <span style="font-size: 16pt; color: #ff33ff">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; New user???&nbsp;</span></strong></span>&nbsp; 
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<span style="font-size: 16pt;
                        color: #ff33ff"></span><br />
                    &nbsp;
                    <asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="True" Style="z-index: 109;
                        left: 504px; position: absolute; top: 184px; height: 30px; width: 128px;" 
                        NavigateUrl="~/OldRegister.aspx" Font-Size="16pt" ForeColor="#FFFF33"><span 
                        style="color: #ff6600"><strong>Sign Up Here</strong></span></asp:HyperLink>
                </asp:Panel>
                <br />
                &nbsp;&nbsp;
                <br />
            </strong></span>
        </asp:Panel>
        &nbsp;</div>
    </form>
</body>
</html>
