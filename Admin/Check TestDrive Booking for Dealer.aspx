<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="false" CodeFile="Check TestDrive Booking for Dealer.aspx.vb" Inherits="Admin_Ceck_TestDrive_Booking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script src="../media/jui/js/jquery.min.js" type="text/javascript"></script>
  <script src="../media/jui/js/jquery-noconflict.js" type="text/javascript"></script>
  <script src="../ajax.googleapis.com/ajax/libs/jqueryui/1.9.2/jquery-ui.min.js" type="text/javascript"></script>
  <script src="../templates/jm-car-dealer-ef4/cache/jmf_357735f685bcc3d801b6aef3c1c3550de90f.js?t=1450273888" type="text/javascript"></script>
  <script src="../cdnjs.cloudflare.com/ajax/libs/picturefill/2.3.1/picturefill.min.js" type="text/javascript" defer="defer"></script>
  <script src="../templates/jm-car-dealer-ef4/cache/jmf_6670617b1dd613fde5ff88bedb5b5ae97c97.js?t=1450284527" type="text/javascript" defer="defer"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="djc_title"><h3>Check Test Drive Bookings for Dealers</h3></div>
    <table class="table table-condensed">
    <tr>
        <td>
            Dealer</td>
        <td class="style3">
            <asp:DropDownList ID="DropDownList2" runat="server" 
                DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="DealerId">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [Name], [DealerId] FROM [DealerTable]">
            </asp:SqlDataSource>
        </td>
        <td class="style3">
            <asp:Button ID="Button1" runat="server" cssclass="btn button readmore" Text="Search"  ValidationGroup="L" />
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
    SelectCommand="SELECT * FROM [TestDriveTable] WHERE ([DealerId] = @CarId) ORDER BY [Id] DESC" 
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
        <asp:ControlParameter ControlID="DropDownList2" Name="CarId" 
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

