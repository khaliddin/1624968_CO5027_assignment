<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="jubahbapak.cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div id="navbar">
            <ul>
                <li><a href="Default.aspx">HOME</a></li>
                <li>
                    <a href="Product.aspx">PRODUCTS</a>
                </li>
                <li>
                    <a href="About.aspx">ABOUT US</a>
                </li>
                
                <li>
                    <a href="Contact.aspx">CONTACT US</a>
                </li>
                <li>
                    <a href="Account.aspx">ACCOUNT</a>
                    
                </li>
            </ul>
        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h2>Purchase</h2>
    <asp:Label ID="quantity" runat="server" Text="Quantity" AssociatedControlID="ddlquantity"></asp:Label>
&nbsp;<asp:DropDownList ID="ddlquantity" runat="server">
    <asp:ListItem>1</asp:ListItem>
    <asp:ListItem>2</asp:ListItem>
    <asp:ListItem>3</asp:ListItem>
    </asp:DropDownList>
   
    <p>shiiping charges
        <!--<asp:Repeater ID="Repeater1" runat="server" DataSourceID="cartdb">
            <HeaderTemplate></HeaderTemplate>
        
        <ItemTemplate>
            <%#Eval("prod_name") %>
        </ItemTemplate>
       
        <FooterTemplate></FooterTemplate> 
        </asp:Repeater>
        <asp:SqlDataSource ID="cartdb" runat="server" ConnectionString="<%$ ConnectionStrings:co5027asgConnectionString %>" SelectCommand="SELECT * FROM [prod_table]"></asp:SqlDataSource>
    -->
    </p>
&nbsp;<asp:Button ID="purchasebutton" runat="server" Text="buy" OnClick="purchasebutton_Click" />
</asp:Content>
