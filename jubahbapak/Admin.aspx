<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="jubahbapak.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>JUBAH BAPAK: ADMIN PAGE</title>
    <link rel="stylesheet" href="css/bapakstylesheet.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="id" DataSourceID="SqlDataSource1" DefaultMode="Insert">
            <EditItemTemplate>
                id:
                <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                <br />
                Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                Number:
                <asp:TextBox ID="NumberTextBox" runat="server" Text='<%# Bind("Number") %>' />
                <br />
                ExDirectory:
                <asp:CheckBox ID="ExDirectoryCheckBox" runat="server" Checked='<%# Bind("ExDirectory") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                Number:
                <asp:TextBox ID="NumberTextBox" runat="server" Text='<%# Bind("Number") %>' />
                <br />
                ExDirectory:
                <asp:CheckBox ID="ExDirectoryCheckBox" runat="server" Checked='<%# Bind("ExDirectory") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                id:
                <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                <br />
                Name:
                <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                Number:
                <asp:Label ID="NumberLabel" runat="server" Text='<%# Bind("Number") %>' />
                <br />
                ExDirectory:
                <asp:CheckBox ID="ExDirectoryCheckBox" runat="server" Checked='<%# Bind("ExDirectory") %>' Enabled="false" />
                <br />

            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:jubahbapakConnectionString %>" DeleteCommand="DELETE FROM [gridview] WHERE [id] = @original_id AND [Name] = @original_Name AND [Number] = @original_Number AND [ExDirectory] = @original_ExDirectory" InsertCommand="INSERT INTO [gridview] ([Name], [Number], [ExDirectory]) VALUES (@Name, @Number, @ExDirectory)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [gridview]" UpdateCommand="UPDATE [gridview] SET [Name] = @Name, [Number] = @Number, [ExDirectory] = @ExDirectory WHERE [id] = @original_id AND [Name] = @original_Name AND [Number] = @original_Number AND [ExDirectory] = @original_ExDirectory">
            <DeleteParameters>
                <asp:Parameter Name="original_id" Type="Int32" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_Number" Type="String" />
                <asp:Parameter Name="original_ExDirectory" Type="Boolean" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Number" Type="String" />
                <asp:Parameter Name="ExDirectory" Type="Boolean" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Number" Type="String" />
                <asp:Parameter Name="ExDirectory" Type="Boolean" />
                <asp:Parameter Name="original_id" Type="Int32" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_Number" Type="String" />
                <asp:Parameter Name="original_ExDirectory" Type="Boolean" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
