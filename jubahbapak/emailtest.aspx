<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="emailtest.aspx.cs" Inherits="jubahbapak.emailtest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="error" ValidationExpression="^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*\s*$"></asp:RegularExpressionValidator>
    
    </div>
    </form>
</body>
</html>
