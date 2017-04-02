<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="jubahbapak.aspxWebpages.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>JUBAH BAPAK</title>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div id="navbar">
            <ul>
                <li><a class="selected" href="Default.aspx">HOME</a></li>
                <li>
                    <a href="Product.aspx">PRODUCTS</a>
                </li>
                <li>
                    <a href="About.aspx">ABOUT US</a>
                </li>
                <li>
                    <a href="Faq.aspx">FAQ</a>
                </li>
                <li>
                    <a href="Contact.aspx">CONTACT US</a>
                </li>
                <li>
                    <a href="#">ACCOUNT</a>
                    <ul>
                        <li><a href="Login.aspx">Log in</a></li>
                        <li><a href="Signup.aspx">Sign up</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

       <div class="sale"> ON SALE </div>
        <div class="newitemwrapper">
            <div class="item1" id="prod1">
            <img src="img/jubahlaki.jpg" alt="jubah lakilaki"/>
                <div class="prodtext">
                    <h4>Jubah casual (black)</h4>
                    <p>Jubah suitable for men of any age and sizes</p>
                    <p>Price:  BND $15.00 | was BND $25.00</p>
                    <a class="morebutton" href="#" title="moreinfo">More info</a>
                </div>
            </div>

            <div class="item1" id="prod2">
            <img src="img/jubahputih.jpg" alt="jubah putih"/>
                <div class="prodtext">
                    <h4>Jubah casual (white)</h4>
                    <p>Jubah suitable for men of any age and sizes</p>
                    <p>Price:  BND $15.00 | was BND $25.00</p>
                    <a class="morebutton" href="#" title="moreinfo">More info</a>
                </div>
            </div>

            <div class="item1" id="prod3">
            <img src="img/jubahcotton.jpg" alt="cotton"/>
                <div class="prodtext">
                    <h4>Jubah cotton comfort</h4>
                    <p>Comfortable texture Jubah for men</p>
                    <p>Price:  BND $20.00 | was BND $35.00</p>
                    <a class="morebutton" href="#" title="moreinfo">More info</a>
                </div>
            </div>

        </div>

    <div class="new"> NEW </div>
        <div class="newitemwrapper">
            <div class="item1" id="prod4">
            <img src="img/jubahbini.jpg" alt="jubah perempuan"/>
                <div class="prodtext">
                    <h4>Sequin Jubah (Female)</h4>
                    <p>Comfortable elegant jubah for women from the well known Sequin</p>
                    <p>Price:  BND $25.00</p>
                    <a class="morebutton" href="#" title="moreinfo">More info</a>
                </div>
            </div>

            <div class="item1" id="prod5">
            <img src="img/jubahslimfit.jpg" alt="jubah slimfit"/>
                <div class="prodtext">
                    <h4>Jubah slimfit (men)</h4>
                    <p>Jubah slimfit cutting for men</p>
                    <p>Price:  BND $25.00</p>
                    <a class="morebutton" href="#" title="moreinfo">More info</a>
                </div>
            </div>

            <div class="item1" id="prod6">
            <img src="img/jubahcordova.jpg" alt="jubah cordova"/>
                <div class="prodtext">
                    <h4>Jubah Cordova</h4>
                    <p>Jubah Cordova Warna Pakaian Muslim Gamis Pria Al-Isra</p>
                    <p>Price:  BND $25.00</p>
                    <a class="morebutton" href="#" title="moreinfo">More info</a>
                </div>
            </div>

             <div class="item1" id="prod7">
            <img src="img/jubahhisan.jpg" alt="jubah hisan"/>
                <div class="prodtext">
                    <h4>Jubah Hisan</h4>
                    <p>Hisan Jubah HGR03 Model Exclusive</p>
                    <p>Price:  BND $30.00</p>
                    <a class="morebutton" href="#" title="moreinfo">More info</a>
                </div>
            </div>

            <div class="item1" id="prod8">
            <img src="img/jubahmoroko.jpg" alt="jubah morocco"/>
                <div class="prodtext">
                    <h4>Jubah Morocco</h4>
                    <p>Jubah Morocco</p>
                    <p>Price:  BND $25.00</p>
                    <a class="morebutton" href="#" title="moreinfo">More info</a>
                </div>
            </div>

            <div class="item1" id="prod9">
            <img src="img/jubahoblongmorocco.jpg" alt="jubah oblong morocco"/>
                <div class="prodtext">
                    <h4>Jubah Oblong Morocco</h4>
                    <p>Combination of Jubah Oblong and Morocco</p>
                    <p>Price:  BND $25.00</p>
                    <a class="morebutton" href="#" title="moreinfo">More info</a>
                </div>
            </div>
        </div>

       

</asp:Content>
