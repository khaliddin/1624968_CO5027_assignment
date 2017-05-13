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
                    <a class="selected" href="Login.aspx">ACCOUNT</a>
                 
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

        <div class="usernamelabel">Username:
        <asp:TextBox ID="loginusernametxt" runat="server"></asp:TextBox></div>
        <br />
        <div class="passwordlabel">Password:
        <asp:TextBox ID="loginpasswordtxt" runat="server" TextMode="Password"></asp:TextBox></div>
        <br />
        <div class="loginbutton"><asp:Button ID="Button1" runat="server" Text="Sign in" style="height: 26px" OnClick="Button1_Click" />
            <br />
            <br />
            <asp:Literal ID="loginliteral" runat="server"></asp:Literal>
        </div>

     </div>

    <div class="registerwrap">
        <h4>Registration</h4>
    </div>
    <div class="registercontent">

        <asp:Label ID="regusernamelbl" runat="server" Text="Username: "></asp:Label>
        <asp:TextBox ID="regusernametxt" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="regemaillbl" runat="server" Text="E-mail: "></asp:Label>
        <asp:TextBox ID="regemailtxt" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="regpasswordlbl" runat="server" Text="Password: "></asp:Label>
        <asp:TextBox ID="regpasswordtxt" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <asp:Label ID="regcfmpasswordlbl" runat="server" Text="Confirm password: "></asp:Label>
        <asp:TextBox ID="regcfmpasswordtxt" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <asp:Button ID="registerbtn" runat="server" Text="Register" OnClick="register_Click" style="height: 26px" />
        &nbsp;<asp:Literal ID="littext1" runat="server"></asp:Literal>
        <br />

    </div>
    </div>
</asp:Content>
