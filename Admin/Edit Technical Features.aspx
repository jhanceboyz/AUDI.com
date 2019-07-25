<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="false" CodeFile="Edit Technical Features.aspx.vb" Inherits="Edit_Car_Features" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script src="../media/jui/js/jquery.min.js" type="text/javascript"></script>
  <script src="../media/jui/js/jquery-noconflict.js" type="text/javascript"></script>
  <script src="../ajax.googleapis.com/ajax/libs/jqueryui/1.9.2/jquery-ui.min.js" type="text/javascript"></script>
  <script src="../templates/jm-car-dealer-ef4/cache/jmf_357735f685bcc3d801b6aef3c1c3550de90f.js?t=1450273888" type="text/javascript"></script>
  <script src="../cdnjs.cloudflare.com/ajax/libs/picturefill/2.3.1/picturefill.min.js" type="text/javascript" defer="defer"></script>
  <script src="../templates/jm-car-dealer-ef4/cache/jmf_6670617b1dd613fde5ff88bedb5b5ae97c97.js?t=1450284527" type="text/javascript" defer="defer"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="djc_title"><h3>Edit Listed Technical Features Detail</h3></div>
   <table class="table table-condensed">
        <tr>
        <td>
            Category<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="DropDownList1" Display="Dynamic" ErrorMessage="**" 
                ValidationGroup="L"></asp:RequiredFieldValidator>
        </td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                DataSourceID="SqlDataSource2" DataTextField="CategoryName" 
                DataValueField="CategoryId">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [CategoryName], [CategoryId] FROM [CategoryTable] WHERE ([Status] = @Status)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="Yes" Name="Status" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>
            Car Model<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="DropDownList2" Display="Dynamic" ErrorMessage="**" 
                ValidationGroup="L"></asp:RequiredFieldValidator>
        </td>
        <td>
            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                DataSourceID="SqlDataSource3" DataTextField="CarName" 
                DataValueField="CarName">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT DISTINCT [CarName] FROM [Cartable] WHERE (([Categoryid] = @Categoryid) AND ([Status] = @Status))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="Categoryid" 
                        PropertyName="SelectedValue" Type="Int32" />
                    <asp:Parameter DefaultValue="Yes" Name="Status" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>
            Variant<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="DropDownList3" Display="Dynamic" ErrorMessage="**" 
                ValidationGroup="L"></asp:RequiredFieldValidator>
        </td>
        <td>
            <asp:DropDownList ID="DropDownList3" runat="server" 
                DataSourceID="SqlDataSource4" DataTextField="Variant" 
                DataValueField="carid">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [Variant], [carid] FROM [Cartable] WHERE (([CarName] = @CarName) AND ([Status] = @Status))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList2" Name="CarName" 
                        PropertyName="SelectedValue" Type="String" />
                    <asp:Parameter DefaultValue="Yes" Name="Status" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                <div class="djc_addtocart"><asp:Button ID="Button1" runat="server" cssclass="btn button readmore" Text="Search"  ValidationGroup="L" /></div>
            </td>
        </tr>
    </table>
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" DataKeyNames="CarId" 
        DataSourceID="SqlDataSource1" Width="100%">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="CarId" HeaderText="CarId" ReadOnly="True" 
                SortExpression="CarId" />
            <asp:BoundField DataField="TyreSize" HeaderText="TyreSize" 
                SortExpression="TyreSize" />
            <asp:BoundField DataField="TransmissionType" HeaderText="TransmissionType" 
                SortExpression="TransmissionType" />
            <asp:BoundField DataField="MaxPower" HeaderText="MaxPower" 
                SortExpression="MaxPower" />
            <asp:BoundField DataField="MaxTorque" HeaderText="MaxTorque" 
                SortExpression="MaxTorque" />
            <asp:BoundField DataField="BoreStroke" HeaderText="BoreStroke" 
                SortExpression="BoreStroke" />
            <asp:BoundField DataField="FuelInjection" HeaderText="FuelInjection" 
                SortExpression="FuelInjection" />
            <asp:BoundField DataField="EngineType" HeaderText="EngineType" 
                SortExpression="EngineType" />
            <asp:BoundField DataField="NumberofCylinder" HeaderText="NumberofCylinder" 
                SortExpression="NumberofCylinder" />
            <asp:BoundField DataField="PositionofEngine" HeaderText="PositionofEngine" 
                SortExpression="PositionofEngine" />
            <asp:BoundField DataField="Layout" HeaderText="Layout" 
                SortExpression="Layout" />
            <asp:BoundField DataField="CompressionRatio" HeaderText="CompressionRatio" 
                SortExpression="CompressionRatio" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [TechnicalTable] WHERE [CarId] = @CarId" 
        InsertCommand="INSERT INTO [TechnicalTable] ([CarId], [TyreSize], [TransmissionType], [MaxPower], [MaxTorque], [BoreStroke], [FuelInjection], [EngineType], [NumberofCylinder], [PositionofEngine], [Layout], [CompressionRatio]) VALUES (@CarId, @TyreSize, @TransmissionType, @MaxPower, @MaxTorque, @BoreStroke, @FuelInjection, @EngineType, @NumberofCylinder, @PositionofEngine, @Layout, @CompressionRatio)" 
        SelectCommand="SELECT * FROM [TechnicalTable] WHERE ([CarId] = @CarId)" 
        
        UpdateCommand="UPDATE [TechnicalTable] SET [TyreSize] = @TyreSize, [TransmissionType] = @TransmissionType, [MaxPower] = @MaxPower, [MaxTorque] = @MaxTorque, [BoreStroke] = @BoreStroke, [FuelInjection] = @FuelInjection, [EngineType] = @EngineType, [NumberofCylinder] = @NumberofCylinder, [PositionofEngine] = @PositionofEngine, [Layout] = @Layout, [CompressionRatio] = @CompressionRatio WHERE [CarId] = @CarId">
        <DeleteParameters>
            <asp:Parameter Name="CarId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CarId" Type="Int32" />
            <asp:Parameter Name="TyreSize" Type="String" />
            <asp:Parameter Name="TransmissionType" Type="String" />
            <asp:Parameter Name="MaxPower" Type="String" />
            <asp:Parameter Name="MaxTorque" Type="String" />
            <asp:Parameter Name="BoreStroke" Type="String" />
            <asp:Parameter Name="FuelInjection" Type="String" />
            <asp:Parameter Name="EngineType" Type="String" />
            <asp:Parameter Name="NumberofCylinder" Type="Int32" />
            <asp:Parameter Name="PositionofEngine" Type="String" />
            <asp:Parameter Name="Layout" Type="String" />
            <asp:Parameter Name="CompressionRatio" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList3" Name="CarId" 
                PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="TyreSize" Type="String" />
            <asp:Parameter Name="TransmissionType" Type="String" />
            <asp:Parameter Name="MaxPower" Type="String" />
            <asp:Parameter Name="MaxTorque" Type="String" />
            <asp:Parameter Name="BoreStroke" Type="String" />
            <asp:Parameter Name="FuelInjection" Type="String" />
            <asp:Parameter Name="EngineType" Type="String" />
            <asp:Parameter Name="NumberofCylinder" Type="Int32" />
            <asp:Parameter Name="PositionofEngine" Type="String" />
            <asp:Parameter Name="Layout" Type="String" />
            <asp:Parameter Name="CompressionRatio" Type="String" />
            <asp:Parameter Name="CarId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

