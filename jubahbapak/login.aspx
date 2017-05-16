<%@ Page Title="" Language="C#" MasterPageFile="masterpage.Master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="jubahbapak.login" %>
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="regsignwrapper">
    <div class="loginwrap">
        <h4>Login</h4>
    </div>
    <div class="logincontent">

        <div class="loglabel">Username:<asp:TextBox ID="loginusernametxt" runat="server"></asp:TextBox></div>
        <div class="loglabel">Password:<asp:TextBox ID="loginpasswordtxt" runat="server" TextMode="Password"></asp:TextBox></div>
        <div class="loginbutton"><asp:Button ID="Button1" runat="server" Text="Sign in" style="height: 26px" OnClick="Button1_Click" /></div>
        <div class="lit"><asp:Literal ID="loginliteral" runat="server"></asp:Literal></div> 
        </div>


    <div class="registerwrap">
        <h4>Registration</h4>
    </div>
    <div class="registercontent">

       <div class="reglabel"> <asp:Label ID="regusernamelbl" runat="server" Text="Username: "></asp:Label></div>
        <div class="regtxtbox"><asp:TextBox ID="regusernametxt" runat="server" Width="200px"></asp:TextBox></div> 

        <div class="reglabel"><asp:Label ID="regemaillbl" runat="server" Text="E-mail: "></asp:Label></div>
        <div class="regtxtbox"><asp:TextBox ID="regemailtxt" runat="server" Width="200px"></asp:TextBox></div> 

        <div class="reglabel"><asp:Label ID="regpasswordlbl" runat="server" Text="Password: "></asp:Label></div>
        <div class="regtxtbox"><asp:TextBox ID="regpasswordtxt" runat="server" TextMode="Password" Width="200px"></asp:TextBox></div>

        <div class="reglabel"><asp:Label ID="regcfmpasswordlbl" runat="server" Text="Confirm password: "></asp:Label></div>
        <div class="regtxtbox"><asp:TextBox ID="regcfmpasswordtxt" runat="server" TextMode="Password" Width="200px"></asp:TextBox></div>
        
        <div class="regbuttoncss"><asp:Button ID="registerbtn" runat="server" Text="Register" OnClick="register_Click" style="height: 26px" /></div>
        <div class="lit"><asp:Literal ID="littext1" runat="server"></asp:Literal></div>
        </div>

    </div>
</asp:Content>
