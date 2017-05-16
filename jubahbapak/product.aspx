<%@ Page Title="" Language="C#" MasterPageFile="masterpage.Master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="jubahbapak.product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="products"> PRODUCTS </div>
     <div id="productitemwrapper">
    <asp:Repeater ID="prodrepeat" runat="server">

        <HeaderTemplate></HeaderTemplate>
        
        <ItemTemplate>

             <div class="item1" id="prod1">
           <img src="./prodImg/<%#Eval("imgName") %><%#Eval("extension") %>" alt="<%#Eval("altText") %>"/>
                <div class="prodtext">
                    <h4><%#Eval("prod_name") %></h4>
                    <a class="morebutton" href="itemDetails.aspx?id=<%#Eval("id") %>" title="moreinfo">More info</a>
                </div>
            
            </div>
            </ItemTemplate>
       
        <FooterTemplate></FooterTemplate>
        
        </asp:Repeater>
         </div>
    </asp:Content>
           
            

