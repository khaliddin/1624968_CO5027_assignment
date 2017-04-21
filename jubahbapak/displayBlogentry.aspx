<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="displayBlogentry.aspx.cs" Inherits="jubahbapak.displayBlogentry" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Blog entry</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Blog entry</h1>
        <asp:Repeater ID="rptrBlogPosts" runat="server">
            <HeaderTemplate>
                <ul>
            </HeaderTemplate>
            <ItemTemplate>
                <li>
                    <a href="<%#Eval("Id", "ViewBlogEntry.aspx?Id={0}") %>">
                        <%#Eval("Title") %>

                    </a>
                </li>

            </ItemTemplate>
            <FooterTemplate>
                </ul>
            </FooterTemplate>
        </asp:Repeater>
    </div>
    </form>
</body>
</html>
