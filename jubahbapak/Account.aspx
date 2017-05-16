<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="jubahbapak.Account" %>
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
                    <a class="selected" href="Account.aspx">ACCOUNT</a>
                    
                </li>
            </ul>
        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h2>Welcome</h2>
    <p>
        <asp:Button ID="sOut" runat="server" OnClick="sOut_Click" Text="Sign out"  OnClientClick="window.open('../Default.aspx', 'Default')"/>
    </p>
</asp:Content>
