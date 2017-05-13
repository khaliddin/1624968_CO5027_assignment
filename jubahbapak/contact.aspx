<%@ Page Title="" Language="C#" MasterPageFile="masterpage.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="jubahbapak.contact" %>
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
                    <a href="Login.aspx">ACCOUNT</a>
                   
                </li>
            </ul>
        </div>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div id="formwrapper">
        <div class="contact"><h4>Contact us</h4>
        </div>
        <div class="labelname">&nbsp;<br />
            <asp:Label ID="lblname" runat="server" Text="First Name: "></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="ctctxtname" runat="server" Width="262px"></asp:TextBox>
        &nbsp;<asp:Literal ID="nametxterrorlit" runat="server"></asp:Literal>
        <br />
        <br />
        <asp:Label ID="lblemail" runat="server" Text="Email: "></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="ctctxtemail" runat="server" Width="262px"></asp:TextBox>
            <asp:Literal ID="emailtxterrorlit" runat="server"></asp:Literal>
        <br />
        <br />
        <asp:Label ID="lblsubject" runat="server" Text="Subject: "></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="ctctxtsubject" runat="server" Width="262px"></asp:TextBox>
            <asp:Literal ID="sbjtxterrorlit" runat="server"></asp:Literal>
        <br />
        <br />
        <asp:Label ID="lblmessage" runat="server" Text="Message: "></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="ctctxtmessage" runat="server" Height="51px" TextMode="MultiLine" Width="263px"></asp:TextBox>
            <asp:Literal ID="msgtxterrorlit" runat="server"></asp:Literal>
            <br />
            <asp:DropDownList ID="dpl" runat="server" Width="114px">
                <asp:ListItem>test1</asp:ListItem>
                <asp:ListItem>test2</asp:ListItem>
                <asp:ListItem>test3</asp:ListItem>
            </asp:DropDownList>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="ctcsendbtn" runat="server" Text="Send" OnClick="ctcsendbtn_Click" />
            <br />
            <br />
            <asp:Literal ID="ctcliteral" runat="server"></asp:Literal>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="ctctxtname" ErrorMessage="First Name cannot have any numeric characters." ValidationExpression="^[^\W\d_]+$"></asp:RegularExpressionValidator>
        </div>
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
