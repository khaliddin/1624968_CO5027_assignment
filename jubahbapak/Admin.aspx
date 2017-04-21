﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="jubahbapak.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="id" DataSourceID="jubahbapak_prodTBL" DefaultMode="Insert">
            <EditItemTemplate>
                id:
                <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                <br />
                prod_name:
                <asp:TextBox ID="prod_nameTextBox" runat="server" Text='<%# Bind("prod_name") %>' />
                <br />
                prod_details:
                <asp:TextBox ID="prod_detailsTextBox" runat="server" Text='<%# Bind("prod_details") %>' />
                <br />
                prod_price:
                <asp:TextBox ID="prod_priceTextBox" runat="server" Text='<%# Bind("prod_price") %>' />
                <br />
                prod_quantity:
                <asp:TextBox ID="prod_quantityTextBox" runat="server" Text='<%# Bind("prod_quantity") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Product Name:
                <asp:TextBox ID="prod_nameTextBox" runat="server" Text='<%# Bind("prod_name") %>' />
                <br />
                Product Details:
                <asp:TextBox ID="prod_detailsTextBox" runat="server" Text='<%# Bind("prod_details") %>' />
                <br />
                Product Price (BND):
                <asp:TextBox ID="prod_priceTextBox" runat="server" Text='<%# Bind("prod_price") %>' />
                <br />
                Product Quantity:
                <asp:TextBox ID="prod_quantityTextBox" runat="server" Text='<%# Bind("prod_quantity") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                id:
                <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                <br />
                Product Name:
                <asp:Label ID="prod_nameLabel" runat="server" Text='<%# Bind("prod_name") %>' />
                <br />
                Product Details:
                <asp:Label ID="prod_detailsLabel" runat="server" Text='<%# Bind("prod_details") %>' />
                <br />
                Product Price(BND):
                <asp:Label ID="prod_priceLabel" runat="server" Text='<%# Bind("prod_price") %>' />
                <br />
                Product Quantity:
                <asp:Label ID="prod_quantityLabel" runat="server" Text='<%# Bind("prod_quantity") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="jubahbapak_prodTBL" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:jubahbapakConnectionString %>" DeleteCommand="DELETE FROM [prod_table] WHERE [id] = @original_id AND [prod_name] = @original_prod_name AND [prod_details] = @original_prod_details AND [prod_price] = @original_prod_price AND [prod_quantity] = @original_prod_quantity" InsertCommand="INSERT INTO [prod_table] ([prod_name], [prod_details], [prod_price], [prod_quantity]) VALUES (@prod_name, @prod_details, @prod_price, @prod_quantity)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [prod_table]" UpdateCommand="UPDATE [prod_table] SET [prod_name] = @prod_name, [prod_details] = @prod_details, [prod_price] = @prod_price, [prod_quantity] = @prod_quantity WHERE [id] = @original_id AND [prod_name] = @original_prod_name AND [prod_details] = @original_prod_details AND [prod_price] = @original_prod_price AND [prod_quantity] = @original_prod_quantity">
            <DeleteParameters>
                <asp:Parameter Name="original_id" Type="Int32" />
                <asp:Parameter Name="original_prod_name" Type="String" />
                <asp:Parameter Name="original_prod_details" Type="String" />
                <asp:Parameter Name="original_prod_price" Type="Double" />
                <asp:Parameter Name="original_prod_quantity" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="prod_name" Type="String" />
                <asp:Parameter Name="prod_details" Type="String" />
                <asp:Parameter Name="prod_price" Type="Double" />
                <asp:Parameter Name="prod_quantity" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="prod_name" Type="String" />
                <asp:Parameter Name="prod_details" Type="String" />
                <asp:Parameter Name="prod_price" Type="Double" />
                <asp:Parameter Name="prod_quantity" Type="Int32" />
                <asp:Parameter Name="original_id" Type="Int32" />
                <asp:Parameter Name="original_prod_name" Type="String" />
                <asp:Parameter Name="original_prod_details" Type="String" />
                <asp:Parameter Name="original_prod_price" Type="Double" />
                <asp:Parameter Name="original_prod_quantity" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="jubahbapak_prodTBL">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="prod_name" HeaderText="prod_name" SortExpression="prod_name" />
                <asp:BoundField DataField="prod_details" HeaderText="prod_details" SortExpression="prod_details" />
                <asp:BoundField DataField="prod_price" HeaderText="prod_price" SortExpression="prod_price" />
                <asp:BoundField DataField="prod_quantity" HeaderText="prod_quantity" SortExpression="prod_quantity" />
                <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="img_upload.aspx?id={0}" InsertVisible="False" Text="Set Image" />
            </Columns>
        </asp:GridView>
    </div>
    </form>
</body>
</html>
