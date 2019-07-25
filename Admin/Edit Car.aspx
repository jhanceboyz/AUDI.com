<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="false" CodeFile="Edit Car.aspx.vb" Inherits="Edit_Car" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="../media/jui/js/jquery.min.js" type="text/javascript"></script>
  <script src="../media/jui/js/jquery-noconflict.js" type="text/javascript"></script>
  <script src="../ajax.googleapis.com/ajax/libs/jqueryui/1.9.2/jquery-ui.min.js" type="text/javascript"></script>
  <script src="../templates/jm-car-dealer-ef4/cache/jmf_357735f685bcc3d801b6aef3c1c3550de90f.js?t=1450273888" type="text/javascript"></script>
  <script src="../cdnjs.cloudflare.com/ajax/libs/picturefill/2.3.1/picturefill.min.js" type="text/javascript" defer="defer"></script>
  <script src="../templates/jm-car-dealer-ef4/cache/jmf_6670617b1dd613fde5ff88bedb5b5ae97c97.js?t=1450284527" type="text/javascript" defer="defer"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="djc_title"><h3>Edit Cars Detail</h3></div>
   <table class="table table-condensed">
        <tr>
            <td>
                Category</td>
            <td class="style3">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource2" DataTextField="CategoryName" 
                    DataValueField="CategoryId">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [CategoryId], [CategoryName] FROM [CategoryTable] WHERE ([Status] = @Status)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="yes" Name="Status" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="style3">
                <div class="djc_addtocart"><asp:Button ID="Button1" runat="server" cssclass="btn button readmore" Text="Search"  ValidationGroup="L" /></div>
            </td>
        </tr>
    </table>
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" DataKeyNames="carid" DataSourceID="SqlDataSource1" 
        Width="100%">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="carid" HeaderText="carid" InsertVisible="False" 
                ReadOnly="True" SortExpression="carid" />
            <asp:BoundField DataField="CarName" HeaderText="CarName" 
                SortExpression="CarName" />
            <asp:BoundField DataField="Description" HeaderText="Description" 
                SortExpression="Description" />
            <asp:BoundField DataField="Variant" HeaderText="Variant" 
                SortExpression="Variant" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="Image" HeaderText="Image" 
                SortExpression="Image" />
            <asp:BoundField DataField="Categoryid" HeaderText="Categoryid" 
                SortExpression="Categoryid" />
            <asp:BoundField DataField="Status" HeaderText="Status" 
                SortExpression="Status" />
            <asp:BoundField DataField="Offer" HeaderText="Offer" SortExpression="Offer" />
            <asp:BoundField DataField="OfferStatus" HeaderText="OfferStatus" 
                SortExpression="OfferStatus" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Height="123px" 
                        ImageUrl='<%# Eval("Image") %>' Width="173px" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [Cartable] WHERE [carid] = @carid" 
        InsertCommand="INSERT INTO [Cartable] ([CarName], [Description], [Variant], [Price], [Image], [Categoryid], [Status], [Offer], [OfferStatus]) VALUES (@CarName, @Description, @Variant, @Price, @Image, @Categoryid, @Status, @Offer, @OfferStatus)" 
        SelectCommand="SELECT * FROM [Cartable] WHERE ([Categoryid] = @Categoryid) ORDER BY [carid] DESC" 
        
    
        UpdateCommand="UPDATE [Cartable] SET [CarName] = @CarName, [Description] = @Description, [Variant] = @Variant, [Price] = @Price, [Image] = @Image, [Categoryid] = @Categoryid, [Status] = @Status, [Offer] = @Offer, [OfferStatus] = @OfferStatus WHERE [carid] = @carid">
        <DeleteParameters>
            <asp:Parameter Name="carid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CarName" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Variant" Type="String" />
            <asp:Parameter Name="Price" Type="String" />
            <asp:Parameter Name="Image" Type="String" />
            <asp:Parameter Name="Categoryid" Type="Int32" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="Offer" Type="Decimal" />
            <asp:Parameter Name="OfferStatus" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Categoryid" 
                PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="CarName" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Variant" Type="String" />
            <asp:Parameter Name="Price" Type="String" />
            <asp:Parameter Name="Image" Type="String" />
            <asp:Parameter Name="Categoryid" Type="Int32" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="Offer" Type="Decimal" />
            <asp:Parameter Name="OfferStatus" Type="String" />
            <asp:Parameter Name="carid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

