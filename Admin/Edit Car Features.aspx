<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="false" CodeFile="Edit Car Features.aspx.vb" Inherits="Edit_Car_Features" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <script src="../media/jui/js/jquery.min.js" type="text/javascript"></script>
  <script src="../media/jui/js/jquery-noconflict.js" type="text/javascript"></script>
  <script src="../ajax.googleapis.com/ajax/libs/jqueryui/1.9.2/jquery-ui.min.js" type="text/javascript"></script>
  <script src="../templates/jm-car-dealer-ef4/cache/jmf_357735f685bcc3d801b6aef3c1c3550de90f.js?t=1450273888" type="text/javascript"></script>
  <script src="../cdnjs.cloudflare.com/ajax/libs/picturefill/2.3.1/picturefill.min.js" type="text/javascript" defer="defer"></script>
  <script src="../templates/jm-car-dealer-ef4/cache/jmf_6670617b1dd613fde5ff88bedb5b5ae97c97.js?t=1450284527" type="text/javascript" defer="defer"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div class="djc_title"><h3>Edit Listed Car Features</h3></div>
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
        AutoGenerateColumns="False" DataKeyNames="Carid" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="Carid" HeaderText="Carid" ReadOnly="True" 
                SortExpression="Carid" />
            <asp:BoundField DataField="Seating" HeaderText="Seating" 
                SortExpression="Seating" />
            <asp:BoundField DataField="WheelBase" HeaderText="WheelBase" 
                SortExpression="WheelBase" />
            <asp:BoundField DataField="RimSize" HeaderText="RimSize" 
                SortExpression="RimSize" />
            <asp:BoundField DataField="Mileage" HeaderText="Mileage" 
                SortExpression="Mileage" />
            <asp:BoundField DataField="DriveTrain" HeaderText="DriveTrain" 
                SortExpression="DriveTrain" />
            <asp:BoundField DataField="TurningRadies" HeaderText="TurningRadies" 
                SortExpression="TurningRadies" />
            <asp:BoundField DataField="EngineDisplacement" HeaderText="EngineDisplacement" 
                SortExpression="EngineDisplacement" />
            <asp:BoundField DataField="EngineTechnology" HeaderText="EngineTechnology" 
                SortExpression="EngineTechnology" />
            <asp:BoundField DataField="FuelCapacity" HeaderText="FuelCapacity" 
                SortExpression="FuelCapacity" />
            <asp:BoundField DataField="Fuel" HeaderText="Fuel" SortExpression="Fuel" />
            <asp:BoundField DataField="Range" HeaderText="Range" SortExpression="Range" />
            <asp:BoundField DataField="EntertainmentFeature" 
                HeaderText="EntertainmentFeature" SortExpression="EntertainmentFeature" />
            <asp:BoundField DataField="Kmph" HeaderText="Kmph" SortExpression="Kmph" />
            <asp:BoundField DataField="Security" HeaderText="Security" 
                SortExpression="Security" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [FeatureTable] WHERE [Carid] = @Carid" 
        InsertCommand="INSERT INTO [FeatureTable] ([Carid], [Seating], [WheelBase], [RimSize], [Mileage], [DriveTrain], [TurningRadies], [EngineDisplacement], [EngineTechnology], [FuelCapacity], [Fuel], [Range], [EntertainmentFeature], [Kmph], [Security]) VALUES (@Carid, @Seating, @WheelBase, @RimSize, @Mileage, @DriveTrain, @TurningRadies, @EngineDisplacement, @EngineTechnology, @FuelCapacity, @Fuel, @Range, @EntertainmentFeature, @Kmph, @Security)" 
        SelectCommand="SELECT * FROM [FeatureTable] WHERE ([Carid] = @Carid)" 
        
        UpdateCommand="UPDATE [FeatureTable] SET [Seating] = @Seating, [WheelBase] = @WheelBase, [RimSize] = @RimSize, [Mileage] = @Mileage, [DriveTrain] = @DriveTrain, [TurningRadies] = @TurningRadies, [EngineDisplacement] = @EngineDisplacement, [EngineTechnology] = @EngineTechnology, [FuelCapacity] = @FuelCapacity, [Fuel] = @Fuel, [Range] = @Range, [EntertainmentFeature] = @EntertainmentFeature, [Kmph] = @Kmph, [Security] = @Security WHERE [Carid] = @Carid">
        <DeleteParameters>
            <asp:Parameter Name="Carid" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Carid" Type="String" />
            <asp:Parameter Name="Seating" Type="Int32" />
            <asp:Parameter Name="WheelBase" Type="String" />
            <asp:Parameter Name="RimSize" Type="String" />
            <asp:Parameter Name="Mileage" Type="String" />
            <asp:Parameter Name="DriveTrain" Type="String" />
            <asp:Parameter Name="TurningRadies" Type="String" />
            <asp:Parameter Name="EngineDisplacement" Type="String" />
            <asp:Parameter Name="EngineTechnology" Type="String" />
            <asp:Parameter Name="FuelCapacity" Type="String" />
            <asp:Parameter Name="Fuel" Type="String" />
            <asp:Parameter Name="Range" Type="String" />
            <asp:Parameter Name="EntertainmentFeature" Type="String" />
            <asp:Parameter Name="Kmph" Type="String" />
            <asp:Parameter Name="Security" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList3" Name="Carid" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Seating" Type="Int32" />
            <asp:Parameter Name="WheelBase" Type="String" />
            <asp:Parameter Name="RimSize" Type="String" />
            <asp:Parameter Name="Mileage" Type="String" />
            <asp:Parameter Name="DriveTrain" Type="String" />
            <asp:Parameter Name="TurningRadies" Type="String" />
            <asp:Parameter Name="EngineDisplacement" Type="String" />
            <asp:Parameter Name="EngineTechnology" Type="String" />
            <asp:Parameter Name="FuelCapacity" Type="String" />
            <asp:Parameter Name="Fuel" Type="String" />
            <asp:Parameter Name="Range" Type="String" />
            <asp:Parameter Name="EntertainmentFeature" Type="String" />
            <asp:Parameter Name="Kmph" Type="String" />
            <asp:Parameter Name="Security" Type="String" />
            <asp:Parameter Name="Carid" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

