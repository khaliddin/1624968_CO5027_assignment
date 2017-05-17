<%@ Page Title="" Language="C#" MasterPageFile="masterpage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="jubahbapak.aspxWebpages.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

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
                    <a href="Contact.aspx">CONTACT US</a>
                </li>
                <li>
                    <a href="Account.aspx">ACCOUNT</a>
                  
                </li>
            </ul>
        </div>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

       <div class="sale"> Featured 
           <asp:Literal ID="Literal1" runat="server"></asp:Literal>
       </div>
        <div class="newitemwrapper">
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
       
        <FooterTemplate>    
</FooterTemplate>
        
        </asp:Repeater>

        </div>

    <div class="new"> NEW<asp:Literal ID="Literal2" runat="server"></asp:Literal></div>
          <div class="newitemwrapper">
         <asp:Repeater ID="Repeater1" runat="server">

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
       
        <FooterTemplate>    
</FooterTemplate>
        
        </asp:Repeater>

        </div>
        

       

</asp:Content>
