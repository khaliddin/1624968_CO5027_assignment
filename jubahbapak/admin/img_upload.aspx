<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminMaster.Master" AutoEventWireup="true" CodeBehind="img_upload.aspx.cs" Inherits="jubahbapak.Itempage" %>
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
    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
    <br />
    <asp:FileUpload ID="selectimg" runat="server" />
&nbsp;<asp:Button ID="cfm_img_upload" runat="server" OnClick="cfm_img_upload_Click" Text="Confirm" />
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Alternate text: "></asp:Label>
&nbsp;<asp:TextBox ID="setalttxt" runat="server"></asp:TextBox>
    <br />
    <asp:Literal ID="img_uploadLit" runat="server"></asp:Literal>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="imageID" DataSourceID="co5027imagetable">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="imageID" HeaderText="imageID" InsertVisible="False" ReadOnly="True" SortExpression="imageID" />
            <asp:BoundField DataField="width" HeaderText="width" SortExpression="width" />
            <asp:BoundField DataField="height" HeaderText="height" SortExpression="height" />
            <asp:BoundField DataField="altText" HeaderText="altText" SortExpression="altText" />
            <asp:BoundField DataField="extension" HeaderText="extension" SortExpression="extension" />
            <asp:BoundField DataField="imgName" HeaderText="imgName" SortExpression="imgName" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="co5027imagetable" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:co5027asgConnectionString %>" DeleteCommand="DELETE FROM [image_table] WHERE [imageID] = @original_imageID AND (([width] = @original_width) OR ([width] IS NULL AND @original_width IS NULL)) AND (([height] = @original_height) OR ([height] IS NULL AND @original_height IS NULL)) AND (([altText] = @original_altText) OR ([altText] IS NULL AND @original_altText IS NULL)) AND (([extension] = @original_extension) OR ([extension] IS NULL AND @original_extension IS NULL)) AND (([imgName] = @original_imgName) OR ([imgName] IS NULL AND @original_imgName IS NULL))" InsertCommand="INSERT INTO [image_table] ([width], [height], [altText], [extension], [imgName]) VALUES (@width, @height, @altText, @extension, @imgName)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [image_table]" UpdateCommand="UPDATE [image_table] SET [width] = @width, [height] = @height, [altText] = @altText, [extension] = @extension, [imgName] = @imgName WHERE [imageID] = @original_imageID AND (([width] = @original_width) OR ([width] IS NULL AND @original_width IS NULL)) AND (([height] = @original_height) OR ([height] IS NULL AND @original_height IS NULL)) AND (([altText] = @original_altText) OR ([altText] IS NULL AND @original_altText IS NULL)) AND (([extension] = @original_extension) OR ([extension] IS NULL AND @original_extension IS NULL)) AND (([imgName] = @original_imgName) OR ([imgName] IS NULL AND @original_imgName IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_imageID" Type="Int32" />
            <asp:Parameter Name="original_width" Type="Int32" />
            <asp:Parameter Name="original_height" Type="Int32" />
            <asp:Parameter Name="original_altText" Type="String" />
            <asp:Parameter Name="original_extension" Type="String" />
            <asp:Parameter Name="original_imgName" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="width" Type="Int32" />
            <asp:Parameter Name="height" Type="Int32" />
            <asp:Parameter Name="altText" Type="String" />
            <asp:Parameter Name="extension" Type="String" />
            <asp:Parameter Name="imgName" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="width" Type="Int32" />
            <asp:Parameter Name="height" Type="Int32" />
            <asp:Parameter Name="altText" Type="String" />
            <asp:Parameter Name="extension" Type="String" />
            <asp:Parameter Name="imgName" Type="String" />
            <asp:Parameter Name="original_imageID" Type="Int32" />
            <asp:Parameter Name="original_width" Type="Int32" />
            <asp:Parameter Name="original_height" Type="Int32" />
            <asp:Parameter Name="original_altText" Type="String" />
            <asp:Parameter Name="original_extension" Type="String" />
            <asp:Parameter Name="original_imgName" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
    <br />
    <asp:FileUpload ID="selectprevimg" runat="server" />
&nbsp;<asp:Button ID="previmg1_btn" runat="server" OnClick="previmg1_btn_Click" Text="Confirm" />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Alternate text: "></asp:Label>
    <asp:TextBox ID="setalttextprevimg1" runat="server"></asp:TextBox>
    <br />
    <asp:Literal ID="previmg_uploadlit" runat="server"></asp:Literal>
    <br />
    <br />
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="prevImg1" DataSourceID="co5027previmage1table">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="prevImg1" HeaderText="prevImg1" InsertVisible="False" ReadOnly="True" SortExpression="prevImg1" />
            <asp:BoundField DataField="width1" HeaderText="width1" SortExpression="width1" />
            <asp:BoundField DataField="height" HeaderText="height" SortExpression="height" />
            <asp:BoundField DataField="altText1" HeaderText="altText1" SortExpression="altText1" />
            <asp:BoundField DataField="extension1" HeaderText="extension1" SortExpression="extension1" />
            <asp:BoundField DataField="prevImg3Name" HeaderText="prevImg3Name" SortExpression="prevImg3Name" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="co5027previmage1table" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:co5027asgConnectionString %>" DeleteCommand="DELETE FROM [prevImage1_table] WHERE [prevImg1] = @original_prevImg1 AND (([width1] = @original_width1) OR ([width1] IS NULL AND @original_width1 IS NULL)) AND (([height] = @original_height) OR ([height] IS NULL AND @original_height IS NULL)) AND (([altText1] = @original_altText1) OR ([altText1] IS NULL AND @original_altText1 IS NULL)) AND (([extension1] = @original_extension1) OR ([extension1] IS NULL AND @original_extension1 IS NULL)) AND (([prevImg3Name] = @original_prevImg3Name) OR ([prevImg3Name] IS NULL AND @original_prevImg3Name IS NULL))" InsertCommand="INSERT INTO [prevImage1_table] ([width1], [height], [altText1], [extension1], [prevImg3Name]) VALUES (@width1, @height, @altText1, @extension1, @prevImg3Name)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [prevImage1_table]" UpdateCommand="UPDATE [prevImage1_table] SET [width1] = @width1, [height] = @height, [altText1] = @altText1, [extension1] = @extension1, [prevImg3Name] = @prevImg3Name WHERE [prevImg1] = @original_prevImg1 AND (([width1] = @original_width1) OR ([width1] IS NULL AND @original_width1 IS NULL)) AND (([height] = @original_height) OR ([height] IS NULL AND @original_height IS NULL)) AND (([altText1] = @original_altText1) OR ([altText1] IS NULL AND @original_altText1 IS NULL)) AND (([extension1] = @original_extension1) OR ([extension1] IS NULL AND @original_extension1 IS NULL)) AND (([prevImg3Name] = @original_prevImg3Name) OR ([prevImg3Name] IS NULL AND @original_prevImg3Name IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_prevImg1" Type="Int32" />
            <asp:Parameter Name="original_width1" Type="Int32" />
            <asp:Parameter Name="original_height" Type="Int32" />
            <asp:Parameter Name="original_altText1" Type="String" />
            <asp:Parameter Name="original_extension1" Type="String" />
            <asp:Parameter Name="original_prevImg3Name" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="width1" Type="Int32" />
            <asp:Parameter Name="height" Type="Int32" />
            <asp:Parameter Name="altText1" Type="String" />
            <asp:Parameter Name="extension1" Type="String" />
            <asp:Parameter Name="prevImg3Name" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="width1" Type="Int32" />
            <asp:Parameter Name="height" Type="Int32" />
            <asp:Parameter Name="altText1" Type="String" />
            <asp:Parameter Name="extension1" Type="String" />
            <asp:Parameter Name="prevImg3Name" Type="String" />
            <asp:Parameter Name="original_prevImg1" Type="Int32" />
            <asp:Parameter Name="original_width1" Type="Int32" />
            <asp:Parameter Name="original_height" Type="Int32" />
            <asp:Parameter Name="original_altText1" Type="String" />
            <asp:Parameter Name="original_extension1" Type="String" />
            <asp:Parameter Name="original_prevImg3Name" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
    <br />
    <asp:FileUpload ID="selectprevimg2" runat="server" />
    <asp:Button ID="previmg2_btn" runat="server" Text="Confirm" OnClick="previmg2_btn_Click" />
    <br />
    <asp:Label ID="Label6" runat="server" Text="Alternate text: "></asp:Label>
    <asp:TextBox ID="setalttextprevimg2" runat="server"></asp:TextBox>
    <br />
    <asp:Literal ID="previmg2_uploadlit" runat="server"></asp:Literal>
    <br />
    <br />
    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="prevImg2" DataSourceID="co5027previmage2table">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="prevImg2" HeaderText="prevImg2" InsertVisible="False" ReadOnly="True" SortExpression="prevImg2" />
            <asp:BoundField DataField="width2" HeaderText="width2" SortExpression="width2" />
            <asp:BoundField DataField="height2" HeaderText="height2" SortExpression="height2" />
            <asp:BoundField DataField="altText2" HeaderText="altText2" SortExpression="altText2" />
            <asp:BoundField DataField="extension" HeaderText="extension" SortExpression="extension" />
            <asp:BoundField DataField="prevImg2Name" HeaderText="prevImg2Name" SortExpression="prevImg2Name" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="co5027previmage2table" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:co5027asgConnectionString %>" DeleteCommand="DELETE FROM [prevImage2_table] WHERE [prevImg2] = @original_prevImg2 AND (([width2] = @original_width2) OR ([width2] IS NULL AND @original_width2 IS NULL)) AND (([height2] = @original_height2) OR ([height2] IS NULL AND @original_height2 IS NULL)) AND (([altText2] = @original_altText2) OR ([altText2] IS NULL AND @original_altText2 IS NULL)) AND (([extension] = @original_extension) OR ([extension] IS NULL AND @original_extension IS NULL)) AND (([prevImg2Name] = @original_prevImg2Name) OR ([prevImg2Name] IS NULL AND @original_prevImg2Name IS NULL))" InsertCommand="INSERT INTO [prevImage2_table] ([width2], [height2], [altText2], [extension], [prevImg2Name]) VALUES (@width2, @height2, @altText2, @extension, @prevImg2Name)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [prevImage2_table]" UpdateCommand="UPDATE [prevImage2_table] SET [width2] = @width2, [height2] = @height2, [altText2] = @altText2, [extension] = @extension, [prevImg2Name] = @prevImg2Name WHERE [prevImg2] = @original_prevImg2 AND (([width2] = @original_width2) OR ([width2] IS NULL AND @original_width2 IS NULL)) AND (([height2] = @original_height2) OR ([height2] IS NULL AND @original_height2 IS NULL)) AND (([altText2] = @original_altText2) OR ([altText2] IS NULL AND @original_altText2 IS NULL)) AND (([extension] = @original_extension) OR ([extension] IS NULL AND @original_extension IS NULL)) AND (([prevImg2Name] = @original_prevImg2Name) OR ([prevImg2Name] IS NULL AND @original_prevImg2Name IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_prevImg2" Type="Int32" />
            <asp:Parameter Name="original_width2" Type="Int32" />
            <asp:Parameter Name="original_height2" Type="Int32" />
            <asp:Parameter Name="original_altText2" Type="String" />
            <asp:Parameter Name="original_extension" Type="String" />
            <asp:Parameter Name="original_prevImg2Name" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="width2" Type="Int32" />
            <asp:Parameter Name="height2" Type="Int32" />
            <asp:Parameter Name="altText2" Type="String" />
            <asp:Parameter Name="extension" Type="String" />
            <asp:Parameter Name="prevImg2Name" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="width2" Type="Int32" />
            <asp:Parameter Name="height2" Type="Int32" />
            <asp:Parameter Name="altText2" Type="String" />
            <asp:Parameter Name="extension" Type="String" />
            <asp:Parameter Name="prevImg2Name" Type="String" />
            <asp:Parameter Name="original_prevImg2" Type="Int32" />
            <asp:Parameter Name="original_width2" Type="Int32" />
            <asp:Parameter Name="original_height2" Type="Int32" />
            <asp:Parameter Name="original_altText2" Type="String" />
            <asp:Parameter Name="original_extension" Type="String" />
            <asp:Parameter Name="original_prevImg2Name" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
