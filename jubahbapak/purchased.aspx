<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="purchased.aspx.cs" Inherits="jubahbapak.purchased" %>
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
    <h2>Final step</h2>
    <asp:Literal ID="sure" runat="server" Text="Confirm payment?"></asp:Literal>
    <asp:Button ID="cfmPurchase" runat="server" Text="Confirm" OnClick="cfmPurchase_Click" />
    <asp:Literal ID="purchaseLit" runat="server"></asp:Literal>

</asp:Content>
