<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminMaster.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="jubahbapak.admin.Admins" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="addProdHeader"><h3>Add Product</h3></div>
        <div class="addFormWrapper">
            
                <div class="reglabel"><asp:Label runat="server" ID="pnamelbl" Text="Product Name:" AssociatedControlID="pnametbox"></asp:Label></div>
                <div class="regtxtbox"><asp:TextBox ID="pnametbox" runat="server" Text='<%# Bind("prod_name") %>' Width="250px" /></div>
               
                <div class="reglabel"><asp:Label runat="server" ID="pdetslbl" Text=" Product Details:" AssociatedControlID="pdetstxtbox"></asp:Label></div>
               <div class="regtxtbox"><asp:TextBox ID="pdetstxtbox" runat="server" Text='<%# Bind("prod_details") %>' TextMode="MultiLine" Width="250px" /></div> 
                
                <div class="reglabel"><asp:Label runat="server" ID="pricelbl" Text="Product Price (BND):" AssociatedControlID="pricetxt"></asp:Label></div>
                <div class="regtxtbox"><asp:TextBox ID="pricetxt" runat="server" Text='<%# Bind("prod_price") %>' Width="250px" /></div>
               
                <div class="reglabel"><asp:Label runat="server" ID="pqtylbl" Text="Product Quantity:" AssociatedControlID="pqtytxt"></asp:Label></div>
                <div class="regtxtbox"><asp:TextBox ID="pqtytxt" runat="server" Text='<%# Bind("prod_quantity") %>' Width="250px" /></div>
                    <div class="regbuttoncss"><asp:Button ID="Button2" runat="server" Text="Add" OnClick="Button2_Click" /></div>
                    <div class="lit"><asp:Literal ID="insmsg" runat="server"></asp:Literal></div>
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
            
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="adminDS">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="id" HeaderText="Product ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="prod_name" HeaderText="Name" SortExpression="prod_name" />
                    <asp:BoundField DataField="prod_details" HeaderText="Details" SortExpression="prod_details" />
                    <asp:BoundField DataField="prod_price" HeaderText="Price (BND)" SortExpression="prod_price" />
                    <asp:BoundField DataField="prod_quantity" HeaderText="Stock quantity" SortExpression="prod_quantity" />
                    <asp:BoundField DataField="onFeatured" HeaderText="Featured(yes/no)" SortExpression="onFeatured" />
                    <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="img_upload.aspx?id={0}" HeaderText="Set Image" Text="SET" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="adminDS" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:dbOnline %>" DeleteCommand="DELETE FROM [prod_table] WHERE [id] = @original_id AND (([prod_name] = @original_prod_name) OR ([prod_name] IS NULL AND @original_prod_name IS NULL)) AND (([prod_details] = @original_prod_details) OR ([prod_details] IS NULL AND @original_prod_details IS NULL)) AND (([prod_price] = @original_prod_price) OR ([prod_price] IS NULL AND @original_prod_price IS NULL)) AND (([prod_quantity] = @original_prod_quantity) OR ([prod_quantity] IS NULL AND @original_prod_quantity IS NULL)) AND (([onFeatured] = @original_onFeatured) OR ([onFeatured] IS NULL AND @original_onFeatured IS NULL))" InsertCommand="INSERT INTO [prod_table] ([prod_name], [prod_details], [prod_price], [prod_quantity], [onFeatured]) VALUES (@prod_name, @prod_details, @prod_price, @prod_quantity, @onFeatured)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [prod_table]" UpdateCommand="UPDATE [prod_table] SET [prod_name] = @prod_name, [prod_details] = @prod_details, [prod_price] = @prod_price, [prod_quantity] = @prod_quantity, [onFeatured] = @onFeatured WHERE [id] = @original_id AND (([prod_name] = @original_prod_name) OR ([prod_name] IS NULL AND @original_prod_name IS NULL)) AND (([prod_details] = @original_prod_details) OR ([prod_details] IS NULL AND @original_prod_details IS NULL)) AND (([prod_price] = @original_prod_price) OR ([prod_price] IS NULL AND @original_prod_price IS NULL)) AND (([prod_quantity] = @original_prod_quantity) OR ([prod_quantity] IS NULL AND @original_prod_quantity IS NULL)) AND (([onFeatured] = @original_onFeatured) OR ([onFeatured] IS NULL AND @original_onFeatured IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_id" Type="Int32" />
                    <asp:Parameter Name="original_prod_name" Type="String" />
                    <asp:Parameter Name="original_prod_details" Type="String" />
                    <asp:Parameter Name="original_prod_price" Type="String" />
                    <asp:Parameter Name="original_prod_quantity" Type="Int32" />
                    <asp:Parameter Name="original_onFeatured" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="prod_name" Type="String" />
                    <asp:Parameter Name="prod_details" Type="String" />
                    <asp:Parameter Name="prod_price" Type="String" />
                    <asp:Parameter Name="prod_quantity" Type="Int32" />
                    <asp:Parameter Name="onFeatured" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="prod_name" Type="String" />
                    <asp:Parameter Name="prod_details" Type="String" />
                    <asp:Parameter Name="prod_price" Type="String" />
                    <asp:Parameter Name="prod_quantity" Type="Int32" />
                    <asp:Parameter Name="onFeatured" Type="String" />
                    <asp:Parameter Name="original_id" Type="Int32" />
                    <asp:Parameter Name="original_prod_name" Type="String" />
                    <asp:Parameter Name="original_prod_details" Type="String" />
                    <asp:Parameter Name="original_prod_price" Type="String" />
                    <asp:Parameter Name="original_prod_quantity" Type="Int32" />
                    <asp:Parameter Name="original_onFeatured" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
        <asp:Button ID="signoutbut" runat="server" Text="Sign out" OnClick="signoutbut_Click" OnClientClick="window.open('../Default.aspx', 'Default')" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
