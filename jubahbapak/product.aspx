<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="product.aspx.cs" Inherits="jubahbapak.product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>JUBAH BAPAK: Products</title>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div id="navbar">
            <ul>
                <li><a href="Default.aspx">HOME</a></li>
                <li>
                    <a class="selected" href="product.aspx">PRODUCTS</a>
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
                    <a href="#">ACCOUNT</a>
                    <ul>
                        <li><a href="login.aspx">Log in</a></li>
                        <li><a href="signup.aspx">Sign up</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <div class="products"> PRODUCTS </div>
        <div id="itemwrapper">
            <div class="item" id="prod1"><a href="">1</a></div>
            <div class="item" id="prod2"><a href="">2</a></div>
            <div class="item" id="prod3"><a href="">3</a></div>
            <div class="item" id="prod4"><a href="">4</a></div>
            <div class="item" id="prod5"><a href="">5</a></div>
            <div class="item" id="prod6"><a href="">5</a></div>
        </div>
</asp:Content>
