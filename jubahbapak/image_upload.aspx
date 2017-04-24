<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="image_upload.aspx.cs" Inherits="jubahbapak.image_upload" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <br />
    <asp:FileUpload ID="imageview" runat="server" />
    &nbsp;<asp:Button ID="uploadview_btn" runat="server" OnClick="uploadview_btn_Click" Text="Upload" />
    <br />
    <br />
    <asp:FileUpload ID="detail_image1" runat="server" />
    &nbsp;<asp:Button ID="upload1_btn" runat="server" OnClick="upload1_btn_Click" Text="Upload" />
    <br />
    <br />
    <asp:FileUpload ID="detail_image2" runat="server" />
    <br />
    <br />
    <asp:FileUpload ID="detail_image3" runat="server" />
    <br />
    <br />
    <asp:FileUpload ID="feature_image" runat="server" />
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Upload" />
&nbsp;<asp:Literal ID="image_uploadLit" runat="server"></asp:Literal>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="imageID" DataSourceID="co5027imagetable">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="imageID" HeaderText="imageID" InsertVisible="False" ReadOnly="True" SortExpression="imageID" />
            <asp:BoundField DataField="width" HeaderText="width" SortExpression="width" />
            <asp:BoundField DataField="height" HeaderText="height" SortExpression="height" />
            <asp:BoundField DataField="altText" HeaderText="altText" SortExpression="altText" />
            <asp:BoundField DataField="extension" HeaderText="extension" SortExpression="extension" />
            <asp:BoundField DataField="imgName" HeaderText="imgName" SortExpression="imgName" />
            <asp:BoundField DataField="prevImg1" HeaderText="prevImg1" SortExpression="prevImg1" />
            <asp:BoundField DataField="width1" HeaderText="width1" SortExpression="width1" />
            <asp:BoundField DataField="height1" HeaderText="height1" SortExpression="height1" />
            <asp:BoundField DataField="altText1" HeaderText="altText1" SortExpression="altText1" />
            <asp:BoundField DataField="extension1" HeaderText="extension1" SortExpression="extension1" />
            <asp:BoundField DataField="prevImg2" HeaderText="prevImg2" SortExpression="prevImg2" />
            <asp:BoundField DataField="width2" HeaderText="width2" SortExpression="width2" />
            <asp:BoundField DataField="height2" HeaderText="height2" SortExpression="height2" />
            <asp:BoundField DataField="altText2" HeaderText="altText2" SortExpression="altText2" />
            <asp:BoundField DataField="extension2" HeaderText="extension2" SortExpression="extension2" />
            <asp:BoundField DataField="prevImg3" HeaderText="prevImg3" SortExpression="prevImg3" />
            <asp:BoundField DataField="width3" HeaderText="width3" SortExpression="width3" />
            <asp:BoundField DataField="height3" HeaderText="height3" SortExpression="height3" />
            <asp:BoundField DataField="altText3" HeaderText="altText3" SortExpression="altText3" />
            <asp:BoundField DataField="extension3" HeaderText="extension3" SortExpression="extension3" />
            <asp:BoundField DataField="featureImg" HeaderText="featureImg" SortExpression="featureImg" />
            <asp:BoundField DataField="fimgwidth" HeaderText="fimgwidth" SortExpression="fimgwidth" />
            <asp:BoundField DataField="fimgheight" HeaderText="fimgheight" SortExpression="fimgheight" />
            <asp:BoundField DataField="fimgaltText" HeaderText="fimgaltText" SortExpression="fimgaltText" />
            <asp:BoundField DataField="fimgextension" HeaderText="fimgextension" SortExpression="fimgextension" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="co5027imagetable" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:co5027asgConnectionString %>" DeleteCommand="DELETE FROM [image_table] WHERE [imageID] = @original_imageID AND (([width] = @original_width) OR ([width] IS NULL AND @original_width IS NULL)) AND (([height] = @original_height) OR ([height] IS NULL AND @original_height IS NULL)) AND (([altText] = @original_altText) OR ([altText] IS NULL AND @original_altText IS NULL)) AND (([extension] = @original_extension) OR ([extension] IS NULL AND @original_extension IS NULL)) AND (([imgName] = @original_imgName) OR ([imgName] IS NULL AND @original_imgName IS NULL)) AND (([prevImg1] = @original_prevImg1) OR ([prevImg1] IS NULL AND @original_prevImg1 IS NULL)) AND (([width1] = @original_width1) OR ([width1] IS NULL AND @original_width1 IS NULL)) AND (([height1] = @original_height1) OR ([height1] IS NULL AND @original_height1 IS NULL)) AND (([altText1] = @original_altText1) OR ([altText1] IS NULL AND @original_altText1 IS NULL)) AND (([extension1] = @original_extension1) OR ([extension1] IS NULL AND @original_extension1 IS NULL)) AND (([prevImg2] = @original_prevImg2) OR ([prevImg2] IS NULL AND @original_prevImg2 IS NULL)) AND (([width2] = @original_width2) OR ([width2] IS NULL AND @original_width2 IS NULL)) AND (([height2] = @original_height2) OR ([height2] IS NULL AND @original_height2 IS NULL)) AND (([altText2] = @original_altText2) OR ([altText2] IS NULL AND @original_altText2 IS NULL)) AND (([extension2] = @original_extension2) OR ([extension2] IS NULL AND @original_extension2 IS NULL)) AND (([prevImg3] = @original_prevImg3) OR ([prevImg3] IS NULL AND @original_prevImg3 IS NULL)) AND (([width3] = @original_width3) OR ([width3] IS NULL AND @original_width3 IS NULL)) AND (([height3] = @original_height3) OR ([height3] IS NULL AND @original_height3 IS NULL)) AND (([altText3] = @original_altText3) OR ([altText3] IS NULL AND @original_altText3 IS NULL)) AND (([extension3] = @original_extension3) OR ([extension3] IS NULL AND @original_extension3 IS NULL)) AND (([featureImg] = @original_featureImg) OR ([featureImg] IS NULL AND @original_featureImg IS NULL)) AND (([fimgwidth] = @original_fimgwidth) OR ([fimgwidth] IS NULL AND @original_fimgwidth IS NULL)) AND (([fimgheight] = @original_fimgheight) OR ([fimgheight] IS NULL AND @original_fimgheight IS NULL)) AND (([fimgaltText] = @original_fimgaltText) OR ([fimgaltText] IS NULL AND @original_fimgaltText IS NULL)) AND (([fimgextension] = @original_fimgextension) OR ([fimgextension] IS NULL AND @original_fimgextension IS NULL))" InsertCommand="INSERT INTO [image_table] ([width], [height], [altText], [extension], [imgName], [prevImg1], [width1], [height1], [altText1], [extension1], [prevImg2], [width2], [height2], [altText2], [extension2], [prevImg3], [width3], [height3], [altText3], [extension3], [featureImg], [fimgwidth], [fimgheight], [fimgaltText], [fimgextension]) VALUES (@width, @height, @altText, @extension, @imgName, @prevImg1, @width1, @height1, @altText1, @extension1, @prevImg2, @width2, @height2, @altText2, @extension2, @prevImg3, @width3, @height3, @altText3, @extension3, @featureImg, @fimgwidth, @fimgheight, @fimgaltText, @fimgextension)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [image_table]" UpdateCommand="UPDATE [image_table] SET [width] = @width, [height] = @height, [altText] = @altText, [extension] = @extension, [imgName] = @imgName, [prevImg1] = @prevImg1, [width1] = @width1, [height1] = @height1, [altText1] = @altText1, [extension1] = @extension1, [prevImg2] = @prevImg2, [width2] = @width2, [height2] = @height2, [altText2] = @altText2, [extension2] = @extension2, [prevImg3] = @prevImg3, [width3] = @width3, [height3] = @height3, [altText3] = @altText3, [extension3] = @extension3, [featureImg] = @featureImg, [fimgwidth] = @fimgwidth, [fimgheight] = @fimgheight, [fimgaltText] = @fimgaltText, [fimgextension] = @fimgextension WHERE [imageID] = @original_imageID AND (([width] = @original_width) OR ([width] IS NULL AND @original_width IS NULL)) AND (([height] = @original_height) OR ([height] IS NULL AND @original_height IS NULL)) AND (([altText] = @original_altText) OR ([altText] IS NULL AND @original_altText IS NULL)) AND (([extension] = @original_extension) OR ([extension] IS NULL AND @original_extension IS NULL)) AND (([imgName] = @original_imgName) OR ([imgName] IS NULL AND @original_imgName IS NULL)) AND (([prevImg1] = @original_prevImg1) OR ([prevImg1] IS NULL AND @original_prevImg1 IS NULL)) AND (([width1] = @original_width1) OR ([width1] IS NULL AND @original_width1 IS NULL)) AND (([height1] = @original_height1) OR ([height1] IS NULL AND @original_height1 IS NULL)) AND (([altText1] = @original_altText1) OR ([altText1] IS NULL AND @original_altText1 IS NULL)) AND (([extension1] = @original_extension1) OR ([extension1] IS NULL AND @original_extension1 IS NULL)) AND (([prevImg2] = @original_prevImg2) OR ([prevImg2] IS NULL AND @original_prevImg2 IS NULL)) AND (([width2] = @original_width2) OR ([width2] IS NULL AND @original_width2 IS NULL)) AND (([height2] = @original_height2) OR ([height2] IS NULL AND @original_height2 IS NULL)) AND (([altText2] = @original_altText2) OR ([altText2] IS NULL AND @original_altText2 IS NULL)) AND (([extension2] = @original_extension2) OR ([extension2] IS NULL AND @original_extension2 IS NULL)) AND (([prevImg3] = @original_prevImg3) OR ([prevImg3] IS NULL AND @original_prevImg3 IS NULL)) AND (([width3] = @original_width3) OR ([width3] IS NULL AND @original_width3 IS NULL)) AND (([height3] = @original_height3) OR ([height3] IS NULL AND @original_height3 IS NULL)) AND (([altText3] = @original_altText3) OR ([altText3] IS NULL AND @original_altText3 IS NULL)) AND (([extension3] = @original_extension3) OR ([extension3] IS NULL AND @original_extension3 IS NULL)) AND (([featureImg] = @original_featureImg) OR ([featureImg] IS NULL AND @original_featureImg IS NULL)) AND (([fimgwidth] = @original_fimgwidth) OR ([fimgwidth] IS NULL AND @original_fimgwidth IS NULL)) AND (([fimgheight] = @original_fimgheight) OR ([fimgheight] IS NULL AND @original_fimgheight IS NULL)) AND (([fimgaltText] = @original_fimgaltText) OR ([fimgaltText] IS NULL AND @original_fimgaltText IS NULL)) AND (([fimgextension] = @original_fimgextension) OR ([fimgextension] IS NULL AND @original_fimgextension IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_imageID" Type="Int32" />
            <asp:Parameter Name="original_width" Type="Int32" />
            <asp:Parameter Name="original_height" Type="Int32" />
            <asp:Parameter Name="original_altText" Type="String" />
            <asp:Parameter Name="original_extension" Type="String" />
            <asp:Parameter Name="original_imgName" Type="String" />
            <asp:Parameter Name="original_prevImg1" Type="String" />
            <asp:Parameter Name="original_width1" Type="Int32" />
            <asp:Parameter Name="original_height1" Type="Int32" />
            <asp:Parameter Name="original_altText1" Type="String" />
            <asp:Parameter Name="original_extension1" Type="String" />
            <asp:Parameter Name="original_prevImg2" Type="String" />
            <asp:Parameter Name="original_width2" Type="Int32" />
            <asp:Parameter Name="original_height2" Type="Int32" />
            <asp:Parameter Name="original_altText2" Type="String" />
            <asp:Parameter Name="original_extension2" Type="String" />
            <asp:Parameter Name="original_prevImg3" Type="String" />
            <asp:Parameter Name="original_width3" Type="Int32" />
            <asp:Parameter Name="original_height3" Type="Int32" />
            <asp:Parameter Name="original_altText3" Type="String" />
            <asp:Parameter Name="original_extension3" Type="String" />
            <asp:Parameter Name="original_featureImg" Type="String" />
            <asp:Parameter Name="original_fimgwidth" Type="Int32" />
            <asp:Parameter Name="original_fimgheight" Type="Int32" />
            <asp:Parameter Name="original_fimgaltText" Type="String" />
            <asp:Parameter Name="original_fimgextension" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="width" Type="Int32" />
            <asp:Parameter Name="height" Type="Int32" />
            <asp:Parameter Name="altText" Type="String" />
            <asp:Parameter Name="extension" Type="String" />
            <asp:Parameter Name="imgName" Type="String" />
            <asp:Parameter Name="prevImg1" Type="String" />
            <asp:Parameter Name="width1" Type="Int32" />
            <asp:Parameter Name="height1" Type="Int32" />
            <asp:Parameter Name="altText1" Type="String" />
            <asp:Parameter Name="extension1" Type="String" />
            <asp:Parameter Name="prevImg2" Type="String" />
            <asp:Parameter Name="width2" Type="Int32" />
            <asp:Parameter Name="height2" Type="Int32" />
            <asp:Parameter Name="altText2" Type="String" />
            <asp:Parameter Name="extension2" Type="String" />
            <asp:Parameter Name="prevImg3" Type="String" />
            <asp:Parameter Name="width3" Type="Int32" />
            <asp:Parameter Name="height3" Type="Int32" />
            <asp:Parameter Name="altText3" Type="String" />
            <asp:Parameter Name="extension3" Type="String" />
            <asp:Parameter Name="featureImg" Type="String" />
            <asp:Parameter Name="fimgwidth" Type="Int32" />
            <asp:Parameter Name="fimgheight" Type="Int32" />
            <asp:Parameter Name="fimgaltText" Type="String" />
            <asp:Parameter Name="fimgextension" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="width" Type="Int32" />
            <asp:Parameter Name="height" Type="Int32" />
            <asp:Parameter Name="altText" Type="String" />
            <asp:Parameter Name="extension" Type="String" />
            <asp:Parameter Name="imgName" Type="String" />
            <asp:Parameter Name="prevImg1" Type="String" />
            <asp:Parameter Name="width1" Type="Int32" />
            <asp:Parameter Name="height1" Type="Int32" />
            <asp:Parameter Name="altText1" Type="String" />
            <asp:Parameter Name="extension1" Type="String" />
            <asp:Parameter Name="prevImg2" Type="String" />
            <asp:Parameter Name="width2" Type="Int32" />
            <asp:Parameter Name="height2" Type="Int32" />
            <asp:Parameter Name="altText2" Type="String" />
            <asp:Parameter Name="extension2" Type="String" />
            <asp:Parameter Name="prevImg3" Type="String" />
            <asp:Parameter Name="width3" Type="Int32" />
            <asp:Parameter Name="height3" Type="Int32" />
            <asp:Parameter Name="altText3" Type="String" />
            <asp:Parameter Name="extension3" Type="String" />
            <asp:Parameter Name="featureImg" Type="String" />
            <asp:Parameter Name="fimgwidth" Type="Int32" />
            <asp:Parameter Name="fimgheight" Type="Int32" />
            <asp:Parameter Name="fimgaltText" Type="String" />
            <asp:Parameter Name="fimgextension" Type="String" />
            <asp:Parameter Name="original_imageID" Type="Int32" />
            <asp:Parameter Name="original_width" Type="Int32" />
            <asp:Parameter Name="original_height" Type="Int32" />
            <asp:Parameter Name="original_altText" Type="String" />
            <asp:Parameter Name="original_extension" Type="String" />
            <asp:Parameter Name="original_imgName" Type="String" />
            <asp:Parameter Name="original_prevImg1" Type="String" />
            <asp:Parameter Name="original_width1" Type="Int32" />
            <asp:Parameter Name="original_height1" Type="Int32" />
            <asp:Parameter Name="original_altText1" Type="String" />
            <asp:Parameter Name="original_extension1" Type="String" />
            <asp:Parameter Name="original_prevImg2" Type="String" />
            <asp:Parameter Name="original_width2" Type="Int32" />
            <asp:Parameter Name="original_height2" Type="Int32" />
            <asp:Parameter Name="original_altText2" Type="String" />
            <asp:Parameter Name="original_extension2" Type="String" />
            <asp:Parameter Name="original_prevImg3" Type="String" />
            <asp:Parameter Name="original_width3" Type="Int32" />
            <asp:Parameter Name="original_height3" Type="Int32" />
            <asp:Parameter Name="original_altText3" Type="String" />
            <asp:Parameter Name="original_extension3" Type="String" />
            <asp:Parameter Name="original_featureImg" Type="String" />
            <asp:Parameter Name="original_fimgwidth" Type="Int32" />
            <asp:Parameter Name="original_fimgheight" Type="Int32" />
            <asp:Parameter Name="original_fimgaltText" Type="String" />
            <asp:Parameter Name="original_fimgextension" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
