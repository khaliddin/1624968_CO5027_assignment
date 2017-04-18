<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="Itempage.aspx.cs" Inherits="jubahbapak.Itempage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:FileUpload ID="imgupload" runat="server" />
    <asp:Button ID="uploadbutton" runat="server" OnClick="uploadbutton_Click" Text="Upload" />
    <asp:Image ID="imgselect" runat="server" />
</asp:Content>
