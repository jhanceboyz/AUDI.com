<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="false" CodeFile="Check Car Booking By Car Type.aspx.vb" Inherits="Admin_Check_Car_Booking_By_Car_Type" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script src="../media/jui/js/jquery.min.js" type="text/javascript"></script>
  <script src="../media/jui/js/jquery-noconflict.js" type="text/javascript"></script>
  <script src="../ajax.googleapis.com/ajax/libs/jqueryui/1.9.2/jquery-ui.min.js" type="text/javascript"></script>
  <script src="../templates/jm-car-dealer-ef4/cache/jmf_357735f685bcc3d801b6aef3c1c3550de90f.js?t=1450273888" type="text/javascript"></script>
  <script src="../cdnjs.cloudflare.com/ajax/libs/picturefill/2.3.1/picturefill.min.js" type="text/javascript" defer="defer"></script>
  <script src="../templates/jm-car-dealer-ef4/cache/jmf_6670617b1dd613fde5ff88bedb5b5ae97c97.js?t=1450284527" type="text/javascript" defer="defer"></script>

</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
<div class="djc_title"><h3>Check Car Bookings by Car Type</h3></div>
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
        SelectCommand="SELECT * FROM [Booking Table] WHERE ([CarID] = @CarID) ORDER BY [BookingId] DESC" 
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
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList3" Name="CarID" 
                PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
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


