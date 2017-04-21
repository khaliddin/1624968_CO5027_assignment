<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="img_upload.aspx.cs" Inherits="jubahbapak.Itempage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Image ID="imgselect" runat="server" />
    <br />
    <asp:Button ID="shwimg" runat="server" OnClick="shwimg_Click" Text="show current product image" />
    &nbsp;<asp:Literal ID="showimglit" runat="server"></asp:Literal>
    <br />
    <asp:FileUpload ID="selectimg" runat="server" />
&nbsp;<asp:Button ID="cfm_img_upload" runat="server" OnClick="cfm_img_upload_Click" Text="Confirm" />
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Alternate text: "></asp:Label>
&nbsp;<asp:TextBox ID="setalttxt" runat="server"></asp:TextBox>
    <br />
    <asp:Literal ID="img_uploadLit" runat="server"></asp:Literal>
</asp:Content>
