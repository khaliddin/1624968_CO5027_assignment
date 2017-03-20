<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="jubahbapak.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>JUBAH BAPAK: Login</title>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div id="navbar">
            <ul>
                <li><a href="Default.aspx">HOME</a></li>
                <li>
                    <a href="product.aspx">PRODUCTS</a>
                </li>
                <li>
                    <a href="about.aspx">ABOUT US</a>
                </li>
                <li>
                    <a href="faq.aspx">FAQ</a>
                </li>
                <li>
                    <a href="contact.aspx">CONTACT US</a>
                </li>
                <li>
                    <a class="selected" href="#">ACCOUNT</a>
                    <ul>
                        <li><a class="selected" href="login.aspx">Log in</a></li>
                        <li><a href="signup.aspx">Sign up</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

</asp:Content>
