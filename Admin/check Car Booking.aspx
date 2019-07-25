<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="false" CodeFile="check Car Booking.aspx.vb" Inherits="Admin_check_Car_Booking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script src="../media/jui/js/jquery.min.js" type="text/javascript"></script>
  <script src="../media/jui/js/jquery-noconflict.js" type="text/javascript"></script>
  <script src="../ajax.googleapis.com/ajax/libs/jqueryui/1.9.2/jquery-ui.min.js" type="text/javascript"></script>
  <script src="../templates/jm-car-dealer-ef4/cache/jmf_357735f685bcc3d801b6aef3c1c3550de90f.js?t=1450273888" type="text/javascript"></script>
  <script src="../cdnjs.cloudflare.com/ajax/libs/picturefill/2.3.1/picturefill.min.js" type="text/javascript" defer="defer"></script>
  <script src="../templates/jm-car-dealer-ef4/cache/jmf_6670617b1dd613fde5ff88bedb5b5ae97c97.js?t=1450284527" type="text/javascript" defer="defer"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="djc_title"><h3>Check Car Bookings for Dealers</h3></div>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" DataKeyNames="BookingId" 
        DataSourceID="SqlDataSource1" Width="100%">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="BookingId" HeaderText="BookingId" ReadOnly="True" 
                SortExpression="BookingId" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" 
                SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" 
                SortExpression="LastName" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Mobile" HeaderText="Mobile" 
                SortExpression="Mobile" />
            <asp:BoundField DataField="Profession" HeaderText="Profession" 
                SortExpression="Profession" />
            <asp:BoundField DataField="Salary" HeaderText="Salary" 
                SortExpression="Salary" />
            <asp:BoundField DataField="DealerId" HeaderText="DealerId" 
                SortExpression="DealerId" />
            <asp:BoundField DataField="CarID" HeaderText="CarID" SortExpression="CarID" />
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            <asp:BoundField DataField="BookingAmount" HeaderText="BookingAmount" 
                SortExpression="BookingAmount" />
            <asp:BoundField DataField="Status" HeaderText="Status" 
                SortExpression="Status" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [Booking Table] WHERE [BookingId] = @BookingId" 
        InsertCommand="INSERT INTO [Booking Table] ([BookingId], [FirstName], [LastName], [Address], [Email], [Mobile], [Profession], [Salary], [DealerId], [CarID], [Date], [BookingAmount], [Status]) VALUES (@BookingId, @FirstName, @LastName, @Address, @Email, @Mobile, @Profession, @Salary, @DealerId, @CarID, @Date, @BookingAmount, @Status)" 
        SelectCommand="SELECT * FROM [Booking Table] ORDER BY [BookingId] DESC" 
        UpdateCommand="UPDATE [Booking Table] SET [FirstName] = @FirstName, [LastName] = @LastName, [Address] = @Address, [Email] = @Email, [Mobile] = @Mobile, [Profession] = @Profession, [Salary] = @Salary, [DealerId] = @DealerId, [CarID] = @CarID, [Date] = @Date, [BookingAmount] = @BookingAmount, [Status] = @Status WHERE [BookingId] = @BookingId">
        <DeleteParameters>
            <asp:Parameter Name="BookingId" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="BookingId" Type="Decimal" />
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Mobile" Type="Decimal" />
            <asp:Parameter Name="Profession" Type="String" />
            <asp:Parameter Name="Salary" Type="String" />
            <asp:Parameter Name="DealerId" Type="Int32" />
            <asp:Parameter Name="CarID" Type="Int32" />
            <asp:Parameter Name="Date" Type="String" />
            <asp:Parameter Name="BookingAmount" Type="Decimal" />
            <asp:Parameter Name="Status" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Mobile" Type="Decimal" />
            <asp:Parameter Name="Profession" Type="String" />
            <asp:Parameter Name="Salary" Type="String" />
            <asp:Parameter Name="DealerId" Type="Int32" />
            <asp:Parameter Name="CarID" Type="Int32" />
            <asp:Parameter Name="Date" Type="String" />
            <asp:Parameter Name="BookingAmount" Type="Decimal" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="BookingId" Type="Decimal" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

