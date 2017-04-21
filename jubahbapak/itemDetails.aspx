<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="itemDetails.aspx.cs" Inherits="jubahbapak.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
 

    <asp:Image ID="prodImage" runat="server" />
    <br />
    <asp:Literal ID="prodNameLit" runat="server"></asp:Literal>
    <br />
    <asp:Literal ID="prodDetLit" runat="server"></asp:Literal>
    <br />
    <asp:Literal ID="prodPriceLit" runat="server"></asp:Literal>
    <br />
    <asp:Literal ID="prodQtyLit" runat="server"></asp:Literal>
 

</asp:Content>
