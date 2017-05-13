<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="jubahbapak.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Page</title>
    <link rel="stylesheet" href="css/bapakstylesheet.css" type="text/css" />
</head>
<body>
     <div class="motherdiv">
         <div class="logo">
            <a href="Default.aspx"><img src="img/jubahbapaklogo.jpg" alt="Welcome" /></a>
        </div>
     <div id="navbar">
            <ul>
                <li><a href="Default.aspx">HOME</a></li>
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
                    <a href="Login.aspx">ACCOUNT</a>
                    
                </li>
            </ul>
        </div>
    <form id="form1" runat="server">
    <div>
         <div class="addProdHeader"><h3>Add Product</h3></div>
        <div class="addFormWrapper">
            
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="id" DataSourceID="co5027datasource" DefaultMode="Insert">
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
            </div>
        <asp:SqlDataSource ID="co5027datasource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:co5027asgConnectionString %>" DeleteCommand="DELETE FROM [prod_table] WHERE [id] = @original_id AND (([prod_name] = @original_prod_name) OR ([prod_name] IS NULL AND @original_prod_name IS NULL)) AND (([prod_details] = @original_prod_details) OR ([prod_details] IS NULL AND @original_prod_details IS NULL)) AND (([prod_price] = @original_prod_price) OR ([prod_price] IS NULL AND @original_prod_price IS NULL)) AND (([prod_quantity] = @original_prod_quantity) OR ([prod_quantity] IS NULL AND @original_prod_quantity IS NULL))" InsertCommand="INSERT INTO [prod_table] ([prod_name], [prod_details], [prod_price], [prod_quantity]) VALUES (@prod_name, @prod_details, @prod_price, @prod_quantity)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [prod_table]" UpdateCommand="UPDATE [prod_table] SET [prod_name] = @prod_name, [prod_details] = @prod_details, [prod_price] = @prod_price, [prod_quantity] = @prod_quantity WHERE [id] = @original_id AND (([prod_name] = @original_prod_name) OR ([prod_name] IS NULL AND @original_prod_name IS NULL)) AND (([prod_details] = @original_prod_details) OR ([prod_details] IS NULL AND @original_prod_details IS NULL)) AND (([prod_price] = @original_prod_price) OR ([prod_price] IS NULL AND @original_prod_price IS NULL)) AND (([prod_quantity] = @original_prod_quantity) OR ([prod_quantity] IS NULL AND @original_prod_quantity IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_id" Type="Int32" />
                <asp:Parameter Name="original_prod_name" Type="String" />
                <asp:Parameter Name="original_prod_details" Type="String" />
                <asp:Parameter Name="original_prod_price" Type="String" />
                <asp:Parameter Name="original_prod_quantity" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="prod_name" Type="String" />
                <asp:Parameter Name="prod_details" Type="String" />
                <asp:Parameter Name="prod_price" Type="String" />
                <asp:Parameter Name="prod_quantity" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="prod_name" Type="String" />
                <asp:Parameter Name="prod_details" Type="String" />
                <asp:Parameter Name="prod_price" Type="String" />
                <asp:Parameter Name="prod_quantity" Type="String" />
                <asp:Parameter Name="original_id" Type="Int32" />
                <asp:Parameter Name="original_prod_name" Type="String" />
                <asp:Parameter Name="original_prod_details" Type="String" />
                <asp:Parameter Name="original_prod_price" Type="String" />
                <asp:Parameter Name="original_prod_quantity" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <div class="manageProdHeader"><h3>Manage Product</h3></div>
        <div class="datagridAdminWrapper">
            
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="co5027DGV">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="prod_name" HeaderText="prod_name" SortExpression="prod_name" />
                <asp:BoundField DataField="prod_details" HeaderText="prod_details" SortExpression="prod_details" />
                <asp:BoundField DataField="prod_price" HeaderText="prod_price" SortExpression="prod_price" />
                <asp:BoundField DataField="prod_quantity" HeaderText="prod_quantity" SortExpression="prod_quantity" />
                <asp:BoundField DataField="onSale" HeaderText="onSale" SortExpression="onSale" />
                <asp:BoundField DataField="onFeatured" HeaderText="onFeatured" SortExpression="onFeatured" />
                <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="img_upload.aspx?id={0}" HeaderText="Set image" Text="Upload" />
            </Columns>
        </asp:GridView>
        </div>
        <asp:SqlDataSource ID="co5027DGV" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:co5027asgConnectionString %>" DeleteCommand="DELETE FROM [prod_table] WHERE [id] = @original_id AND (([prod_name] = @original_prod_name) OR ([prod_name] IS NULL AND @original_prod_name IS NULL)) AND (([prod_details] = @original_prod_details) OR ([prod_details] IS NULL AND @original_prod_details IS NULL)) AND (([prod_price] = @original_prod_price) OR ([prod_price] IS NULL AND @original_prod_price IS NULL)) AND (([prod_quantity] = @original_prod_quantity) OR ([prod_quantity] IS NULL AND @original_prod_quantity IS NULL)) AND (([onSale] = @original_onSale) OR ([onSale] IS NULL AND @original_onSale IS NULL)) AND (([onFeatured] = @original_onFeatured) OR ([onFeatured] IS NULL AND @original_onFeatured IS NULL))" InsertCommand="INSERT INTO [prod_table] ([prod_name], [prod_details], [prod_price], [prod_quantity], [onSale], [onFeatured]) VALUES (@prod_name, @prod_details, @prod_price, @prod_quantity, @onSale, @onFeatured)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [prod_table]" UpdateCommand="UPDATE [prod_table] SET [prod_name] = @prod_name, [prod_details] = @prod_details, [prod_price] = @prod_price, [prod_quantity] = @prod_quantity, [onSale] = @onSale, [onFeatured] = @onFeatured WHERE [id] = @original_id AND (([prod_name] = @original_prod_name) OR ([prod_name] IS NULL AND @original_prod_name IS NULL)) AND (([prod_details] = @original_prod_details) OR ([prod_details] IS NULL AND @original_prod_details IS NULL)) AND (([prod_price] = @original_prod_price) OR ([prod_price] IS NULL AND @original_prod_price IS NULL)) AND (([prod_quantity] = @original_prod_quantity) OR ([prod_quantity] IS NULL AND @original_prod_quantity IS NULL)) AND (([onSale] = @original_onSale) OR ([onSale] IS NULL AND @original_onSale IS NULL)) AND (([onFeatured] = @original_onFeatured) OR ([onFeatured] IS NULL AND @original_onFeatured IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_id" Type="Int32" />
                <asp:Parameter Name="original_prod_name" Type="String" />
                <asp:Parameter Name="original_prod_details" Type="String" />
                <asp:Parameter Name="original_prod_price" Type="String" />
                <asp:Parameter Name="original_prod_quantity" Type="String" />
                <asp:Parameter Name="original_onSale" Type="String" />
                <asp:Parameter Name="original_onFeatured" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="prod_name" Type="String" />
                <asp:Parameter Name="prod_details" Type="String" />
                <asp:Parameter Name="prod_price" Type="String" />
                <asp:Parameter Name="prod_quantity" Type="String" />
                <asp:Parameter Name="onSale" Type="String" />
                <asp:Parameter Name="onFeatured" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="prod_name" Type="String" />
                <asp:Parameter Name="prod_details" Type="String" />
                <asp:Parameter Name="prod_price" Type="String" />
                <asp:Parameter Name="prod_quantity" Type="String" />
                <asp:Parameter Name="onSale" Type="String" />
                <asp:Parameter Name="onFeatured" Type="String" />
                <asp:Parameter Name="original_id" Type="Int32" />
                <asp:Parameter Name="original_prod_name" Type="String" />
                <asp:Parameter Name="original_prod_details" Type="String" />
                <asp:Parameter Name="original_prod_price" Type="String" />
                <asp:Parameter Name="original_prod_quantity" Type="String" />
                <asp:Parameter Name="original_onSale" Type="String" />
                <asp:Parameter Name="original_onFeatured" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
    </div>
    </form>
    <div class="footerindex"><b>&copy; COPYRIGHTS 2017, JUBAH BAPAK</b>
              <a href="http://validator.w3.org/check?uri=referer">Validate HTML</a>
        <a href="http://jigsaw.w3.org/css-validator/check/referer">Validate CSS</a>
              <a class="selected" href="Admin.aspx">Admin</a>
          </div>
         </div>
</body>
</html>
