<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="jubahbapak.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>JUBAH BAPAK: Contact us</title>
    <style type="text/css">
        .messageinput {
            height: 88px;
            width: 185px;
        }
    </style>
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
                    <a class="selected" href="contact.aspx">CONTACT US</a>
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div id="formwrapper">
        <div class="contact"><h4>Contact us</h4>
        </div>
        <asp:Label ID="lblname" runat="server" Text="Name: "></asp:Label>
        <asp:TextBox ID="txtname" runat="server" Width="200px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lblemail" runat="server" Text="Email: "></asp:Label>
        <asp:TextBox ID="txtemail" runat="server" Width="201px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lblsubject" runat="server" Text="Subject: "></asp:Label>
        <asp:TextBox ID="txtsubject" runat="server" Width="189px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lblmessage" runat="server" Text="Message: "></asp:Label>
        <asp:TextBox ID="txtmessage" runat="server" Height="51px" TextMode="MultiLine" Width="179px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="cancelbtn" runat="server" Text="Cancel" />
        <asp:Button ID="sendbtn" runat="server" Text="Send" />
        <br />
        <br />
        
        


    </div>
    <div class="mapwrapper">
        <h4>Find us</h4>
        <div class="maplabel">
            <p>put map here</p>
        </div>
        <div class="map">
            <img src="img/map.jpg" alt="#" />

        </div>
        <div class="mapdesc">
            <p>Go left then right by the forest and straight to JUBAH BAPAK</p>
        </div>
    </div>
</asp:Content>
