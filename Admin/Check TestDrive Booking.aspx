<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="false" CodeFile="Check TestDrive Booking.aspx.vb" Inherits="Admin_Check_TestDrive_Booking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script src="../media/jui/js/jquery.min.js" type="text/javascript"></script>
  <script src="../media/jui/js/jquery-noconflict.js" type="text/javascript"></script>
  <script src="../ajax.googleapis.com/ajax/libs/jqueryui/1.9.2/jquery-ui.min.js" type="text/javascript"></script>
  <script src="../templates/jm-car-dealer-ef4/cache/jmf_357735f685bcc3d801b6aef3c1c3550de90f.js?t=1450273888" type="text/javascript"></script>
  <script src="../cdnjs.cloudflare.com/ajax/libs/picturefill/2.3.1/picturefill.min.js" type="text/javascript" defer="defer"></script>
  <script src="../templates/jm-car-dealer-ef4/cache/jmf_6670617b1dd613fde5ff88bedb5b5ae97c97.js?t=1450284527" type="text/javascript" defer="defer"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="djc_title"><h3>Check Test Drive Bookings</h3></div>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" DataKeyNames="Id" 
        DataSourceID="SqlDataSource1" Width="100%">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" 
                SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" 
                SortExpression="LastName" />
            <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" 
                SortExpression="MobileNo" />
            <asp:BoundField DataField="EMail" HeaderText="EMail" 
                SortExpression="EMail" />
            <asp:BoundField DataField="CarId" HeaderText="CarId" SortExpression="CarId" />
            <asp:BoundField DataField="DealerId" HeaderText="DealerId" 
                SortExpression="DealerId" />
            <asp:BoundField DataField="Id" HeaderText="Id" 
                SortExpression="Id" InsertVisible="False" ReadOnly="True" />
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
        SelectCommand="SELECT * FROM [TestDriveTable] ORDER BY [Id] DESC" 
        
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

