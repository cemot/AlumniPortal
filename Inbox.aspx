<%@ Page Language="VB" MasterPageFile="~/Alumni.master" AutoEventWireup="false" CodeFile="Inbox.aspx.vb" Inherits="Inbox" title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="621px" Style="z-index: 100; left: 145px;
        position: absolute; top: 338px; background-image: url(images/blu4.jpg);" Width="1118px">
        <asp:Label ID="Label12" runat="server" BorderStyle="None" Font-Bold="True" Font-Italic="False"
            Font-Names="Baskerville Old Face" Font-Size="X-Large" Font-Underline="True"
            ForeColor="#C00000" Style="z-index: 100; left: 359px; position: absolute; top: -65px;
            background-color: transparent" Text="Inbox" Visible="False" Width="128px"></asp:Label>
        &nbsp; &nbsp;
        <asp:Label ID="Label1" runat="server" Style="z-index: 102; left: 298px; position: absolute;
            top: 4px" Text="No message in inbox" Width="245px" BorderStyle="None" Font-Bold="True" Font-Size="Large"></asp:Label>
        &nbsp; &nbsp;&nbsp;
 

        <asp:Table ID="Table1" runat="server" Height="30px" Style="z-index: 103; left: 155px;
            position: absolute; top: 438px" Width="722px" CellPadding="5" CellSpacing="5" GridLines="Both">
        </asp:Table>
        &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
        
        
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"
            Style="z-index: 104; left: 63px; position: absolute; top: 44px" 
            CellPadding="4" ForeColor="#333333" GridLines="None" Width="759px">
            <Columns>
            
            <asp:TemplateField>
            <ItemTemplate>
            <asp:CheckBox ID="cbRows" runat="server"/>
             </ItemTemplate>
             </asp:TemplateField>
             
             <asp:BoundField DataField="FromName" HeaderText="Name" SortExpression="FromName" />
             
             
             <asp:TemplateField HeaderText="Subject">
            <ItemTemplate>
           <%-- <asp:HyperLink ID ="hlSubject"  style="cursor:hand; cursor:pointer" Font-Bold ="false" Font-Size ="Small"   runat="server" Text ='<%#Eval("Subject") %>' ForeColor ="Black"  NavigateUrl='<%#"ShowMessagew.aspx?SendDate="+DataBinder.Eval(Container.DataItem,"SendDate") %>'    Target="_blank" ></asp:HyperLink>--%>
           <%--<asp:HyperLink ID ="HyperLink1"  style="cursor:hand; cursor:pointer" Font-Bold ="false" Font-Size ="Small"   runat="server" Text ='<%#Eval("Subject") %>' ForeColor ="Black"   NavigateUrl='<%# GetUrl(Eval("Subject"))%>'></asp:HyperLink>--%>
           <asp:HyperLink ID ="HyperLink1"  style="cursor:hand; cursor:pointer" Font-Bold ="false" Font-Size ="Small"   runat="server" Text ='<%#Eval("Subject") %>' ForeColor ="Black"   NavigateUrl='<%# GetUrl(Eval("SendDate"))%>'></asp:HyperLink>
            </ItemTemplate>
                 <ControlStyle Font-Bold="False" Font-Size="Medium" Font-Underline="False" ForeColor="#0000C0" />
                 <ItemStyle Font-Underline="False" />
             </asp:TemplateField>
             
             
               
                <asp:BoundField DataField="SendDate" HeaderText="Date" SortExpression="SendDate" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" HorizontalAlign="Left" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM Inbox WHERE (SendDate = @SendDate)" 
            SelectCommand="SELECT FromName, SendDate, Subject FROM Inbox WHERE (ToName = @ToName)">
            <SelectParameters>
                <asp:SessionParameter Name="ToName" SessionField="uname" />
            </SelectParameters>
            <DeleteParameters>
                <asp:Parameter Name="SendDate" />
            </DeleteParameters>
        </asp:SqlDataSource>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        <asp:Button ID="btndel" runat="server" Style="z-index: 106; left: 66px; position: absolute;
            top: 4px" Text="Delete" BackColor="White" BorderColor="Gray" BorderStyle="Double" Font-Bold="True" Height="29px" Width="71px" />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        
        
        
        
        
       
              
        
            
            
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




