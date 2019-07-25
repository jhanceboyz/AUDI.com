<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="false" CodeFile="Check TestDrive Booking by Car Type.aspx.vb" Inherits="Admin_Ceck_TestDrive_Booking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script src="../media/jui/js/jquery.min.js" type="text/javascript"></script>
  <script src="../media/jui/js/jquery-noconflict.js" type="text/javascript"></script>
  <script src="../ajax.googleapis.com/ajax/libs/jqueryui/1.9.2/jquery-ui.min.js" type="text/javascript"></script>
  <script src="../templates/jm-car-dealer-ef4/cache/jmf_357735f685bcc3d801b6aef3c1c3550de90f.js?t=1450273888" type="text/javascript"></script>
  <script src="../cdnjs.cloudflare.com/ajax/libs/picturefill/2.3.1/picturefill.min.js" type="text/javascript" defer="defer"></script>
  <script src="../templates/jm-car-dealer-ef4/cache/jmf_6670617b1dd613fde5ff88bedb5b5ae97c97.js?t=1450284527" type="text/javascript" defer="defer"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="djc_title"><h3>Check Test Drive Bookings by Car Types</h3></div>
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
                
                SelectCommand="SELECT [CarName] FROM [Cartable] WHERE (([Categoryid] = @Categoryid) AND ([Status] = @Status))">
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
                
                SelectCommand="SELECT [Variant], [carid] FROM [Cartable] WHERE ([CarName] = @CarName)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList2" Name="CarName" 
                        PropertyName="SelectedValue" Type="String" />
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
    AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" 
    Width="100%">
    <Columns>
        <asp:CommandField ShowEditButton="True" />
        <asp:BoundField DataField="FirstName" HeaderText="FirstName" 
            SortExpression="FirstName" />
        <asp:BoundField DataField="LastName" HeaderText="LastName" 
            SortExpression="LastName" />
        <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" 
            SortExpression="MobileNo" />
        <asp:BoundField DataField="EMail" HeaderText="EMail" SortExpression="EMail" />
        <asp:BoundField DataField="CarId" HeaderText="CarId" SortExpression="CarId" />
        <asp:BoundField DataField="DealerId" HeaderText="DealerId" 
            SortExpression="DealerId" />
        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" 
            ReadOnly="True" SortExpression="Id" />
        <asp:BoundField DataField="Profession" HeaderText="Profession" 
            SortExpression="Profession" />
        <asp:BoundField DataField="Salary" HeaderText="Salary" 
            SortExpression="Salary" />
        <asp:BoundField DataField="Status" HeaderText="Status" 
            SortExpression="Status" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    DeleteCommand="DELETE FROM [TestDriveTable] WHERE [Id] = @Id" 
    InsertCommand="INSERT INTO [TestDriveTable] ([FirstName], [LastName], [MobileNo], [EMail], [CarId], [DealerId], [Profession], [Salary], [Status]) VALUES (@FirstName, @LastName, @MobileNo, @EMail, @CarId, @DealerId, @Profession, @Salary, @Status)" 
    SelectCommand="SELECT * FROM [TestDriveTable] WHERE ([CarId] = @CarId) ORDER BY [Id] DESC" 
    UpdateCommand="UPDATE [TestDriveTable] SET [FirstName] = @FirstName, [LastName] = @LastName, [MobileNo] = @MobileNo, [EMail] = @EMail, [CarId] = @CarId, [DealerId] = @DealerId, [Profession] = @Profession, [Salary] = @Salary, [Status] = @Status WHERE [Id] = @Id">
    <DeleteParameters>
        <asp:Parameter Name="Id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="FirstName" Type="String" />
        <asp:Parameter Name="LastName" Type="String" />
        <asp:Parameter Name="MobileNo" Type="String" />
        <asp:Parameter Name="EMail" Type="String" />
        <asp:Parameter Name="CarId" Type="Int32" />
        <asp:Parameter Name="DealerId" Type="Int32" />
        <asp:Parameter Name="Profession" Type="String" />
        <asp:Parameter Name="Salary" Type="String" />
        <asp:Parameter Name="Status" Type="String" />
    </InsertParameters>
    <SelectParameters>
        <asp:ControlParameter ControlID="DropDownList3" Name="CarId" 
            PropertyName="SelectedValue" Type="Int32" />
    </SelectParameters>
    <UpdateParameters>
        <asp:Parameter Name="FirstName" Type="String" />
        <asp:Parameter Name="LastName" Type="String" />
        <asp:Parameter Name="MobileNo" Type="String" />
        <asp:Parameter Name="EMail" Type="String" />
        <asp:Parameter Name="CarId" Type="Int32" />
        <asp:Parameter Name="DealerId" Type="Int32" />
        <asp:Parameter Name="Profession" Type="String" />
        <asp:Parameter Name="Salary" Type="String" />
        <asp:Parameter Name="Status" Type="String" />
        <asp:Parameter Name="Id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>

