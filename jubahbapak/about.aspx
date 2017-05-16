<%@ Page Title="" Language="C#" MasterPageFile="./masterpage.Master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="jubahbapak.about" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div id="navbar">
            <ul>
                <li><a href="Default.aspx">HOME</a></li>
                <li>
                    <a href="Product.aspx">PRODUCTS</a>
                </li>
                <li>
                    <a class="selected" href="About.aspx">ABOUT US</a>
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="aboutwrap">
        <h3>About us</h3>
    <p>we are jubah bapak and we sell jubah for bapak bapak tanpa kira bangsa</p>
        </div>
</asp:Content>
