<%@ Page Title="" Language="C#" MasterPageFile="masterpage.Master" AutoEventWireup="true" CodeBehind="itemDetails.aspx.cs" Inherits="jubahbapak.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="navbar">
            <ul>
                <li><a href="Default.aspx">HOME</a></li>
                <li>
                    <a class="selected" href="Product.aspx">PRODUCTS</a>
                </li>
                <li>
                    <a href="About.aspx">ABOUT US</a>
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
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
   
     <div class="products"><asp:Literal ID="prodnametxt" runat="server"></asp:Literal></div>
        <div id="itemwrapper">
            
             <div class="itemdetail">
             <asp:HyperLink ID="HyperLink1" runat="server"><asp:Image ID="detailImage" runat="server" /></asp:HyperLink>
             </div>
                <div class="itemdetailtext">
                    <p><span class="priceinfo"><asp:Label ID="desclbl" runat="server" Text="Description: "></asp:Label></span><asp:Literal ID="proddesctxt" runat="server"></asp:Literal></p>
                    <p><span class="priceinfo"><asp:Label ID="pricelbl" runat="server" Text="Price (BND): "></asp:Label></span><asp:Literal ID="prodpricetxt" runat="server"></asp:Literal></p>
                    <p> <asp:Literal ID="quantity" runat="server"></asp:Literal></p>
                </div>
            <div class="cartwrap">
            <div class="cart">
           <asp:HyperLink ID="cartUrl" runat="server"><asp:Image ID="addcart" runat="server" /></asp:HyperLink>
                <asp:Button ID="addtocart" runat="server" OnClick="addcart_Click" Text="Add to cart" />
             </div>
            </div>
            <div class="smallimgwrap">
            <div class="itemdetail1">
           <asp:HyperLink ID="HyperLink2" runat="server"><asp:Image ID="Image1" runat="server" /></asp:HyperLink>
             </div>
            <div class="itemdetail2">
           <asp:HyperLink ID="HyperLink3" runat="server"><asp:Image ID="Image2" runat="server" /></asp:HyperLink>
             </div>
            </div>
            </div>
</asp:Content>
