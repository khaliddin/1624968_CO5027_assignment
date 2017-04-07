<%@ Page Title="" Language="C#" MasterPageFile="masterpage.Master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="jubahbapak.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAZBziKpV-qWJsz__3gYCba0BzJ855GUgo&callback=initMap"
    async defer></script>
    <script type="text/javascript" src="js/map.js"></script>
   
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
                    <a class="selected" href="Contact.aspx">CONTACT US</a>
                </li>
                <li>
                    <a href="#">ACCOUNT</a>
                    <ul>
                        <li><a href="Login.aspx">Log in</a></li>
                        <li><a href="Login.aspx">Sign up</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div id="formwrapper">
        <div class="contact"><h4>Contact us</h4>
        </div>
        <div class="labelname"><asp:Label ID="lblname" runat="server" Text="Name: "></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtname" runat="server" Width="262px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lblemail" runat="server" Text="Email: "></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtemail" runat="server" Width="262px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lblsubject" runat="server" Text="Subject: "></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtsubject" runat="server" Width="262px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lblmessage" runat="server" Text="Message: "></asp:Label>
        &nbsp;
        <asp:TextBox ID="txtmessage" runat="server" Height="51px" TextMode="MultiLine" Width="262px"></asp:TextBox>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="cancelbtn" runat="server" Text="Cancel" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="sendbtn" runat="server" Text="Send" /></div>
        <br />
        <br />
        
        


    </div>
    <div class="mapwrapper">
        <h4>Find us</h4>
        <div class="maplabel">
            <h5>Google Map</h5>
        </div>
        <div id="map">
            
        </div>
        <div class="mapdesc">
            <p>Located in the Fresco building near the Abdul Razak Hotel Apartment and Kolej Perniagaan Laksamana <br /> <br />
                Address: <br />
                Plaza Abdul Razak, Jalan Laksamana Abdul Razak, Bandar Seri Begawan BA1712
            </p>
        </div>
         <span class="static">Static Map</span>
        <div id="staticmap">
           
            <img src="img/staticmap.jpg" alt="We are located here. Plaza Abdul Razak, Jalan Laksamana Abdul Razak, Bandar Seri Begawan BA1712 " />
        </div>
    </div>
</asp:Content>
