<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddBlogEntry.aspx.cs" Inherits="jubahbapak.entity" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="titlelabel" runat="server" Text="Title: "></asp:Label>
&nbsp;<asp:TextBox ID="txtTitle" runat="server" MaxLength="100"></asp:TextBox>
        <br />
        <asp:Label ID="lblBody" runat="server" Text="Body: "></asp:Label>
&nbsp;<asp:TextBox ID="bodytxt" runat="server" MaxLength="500" TextMode="MultiLine"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnAddEntry" runat="server" OnClick="btnAddEntry_Click" Text="Add Blog Entry" />
        <br />
        <br />
        <asp:FileUpload ID="imgselect" runat="server" />
&nbsp;<asp:Button ID="uploadbtn" runat="server" OnClick="uploadbtn_Click" Text="Upload" />
        <br />
        <asp:Label ID="lblalttxt" runat="server" Text="Alernate text: "></asp:Label>
&nbsp;<asp:TextBox ID="txtAltText" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Literal ID="litResult" runat="server"></asp:Literal>
    
    </div>
    </form>
</body>
</html>
