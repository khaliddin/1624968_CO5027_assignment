<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="jubahbapak.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="gridviewbapaktest" CellSpacing="-1" GridLines="None">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" >
        <ItemStyle CssClass="gridbuttons" />
        </asp:CommandField>
        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" Visible="False" />
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" >
        <ItemStyle CssClass="gridtestname" />
        </asp:BoundField>
        <asp:BoundField DataField="Number" HeaderText="Number" SortExpression="Number" >
        <ItemStyle CssClass="gridtestnumber" />
        </asp:BoundField>
        <asp:CheckBoxField DataField="ExDirectory" HeaderText="Ex. Directory" SortExpression="ExDirectory" >
        <ItemStyle CssClass="gridtestex" />
        </asp:CheckBoxField>
        <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="Itempage.aspx?id={0}" InsertVisible="False" Text="Set image" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="gridviewbapaktest" runat="server" ConnectionString="<%$ ConnectionStrings:jubahbapakConnectionString %>" SelectCommand="SELECT * FROM [gridview]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [gridview] WHERE [id] = @original_id AND [Name] = @original_Name AND [Number] = @original_Number AND [ExDirectory] = @original_ExDirectory" InsertCommand="INSERT INTO [gridview] ([Name], [Number], [ExDirectory]) VALUES (@Name, @Number, @ExDirectory)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [gridview] SET [Name] = @Name, [Number] = @Number, [ExDirectory] = @ExDirectory WHERE [id] = @original_id AND [Name] = @original_Name AND [Number] = @original_Number AND [ExDirectory] = @original_ExDirectory">
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
</asp:Content>
