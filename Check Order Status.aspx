<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Check Order Status.aspx.vb" Inherits="Check_Brder_Status" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 224px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3>
        Check Booking Order</h3>
    <table class="style1">
        <tr>
            <td class="style2">
                Booking Order No.</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="205px"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="Search" />
            </td>
        </tr>
    </table>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        DataKeyNames="BookingId" DataSourceID="SqlDataSource1" Height="50px" 
        Width="65%">
        <Fields>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Height="200px" 
                        ImageUrl='<%# Eval("Image") %>' />
                </ItemTemplate>
            </asp:TemplateField>
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
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            <asp:BoundField DataField="BookingAmount" HeaderText="BookingAmount" 
                SortExpression="BookingAmount" />
            <asp:BoundField DataField="Status" HeaderText="Status" 
                SortExpression="Status" />
            <asp:BoundField DataField="CarName" HeaderText="CarName" 
                SortExpression="CarName" />
            <asp:BoundField DataField="Variant" HeaderText="Variant" 
                SortExpression="Variant" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
        </Fields>
    </asp:DetailsView>
    <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" 
        DataSourceID="SqlDataSource2" Height="50px" Width="65%">
        <Fields>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Image ID="Image2" runat="server" Height="150px" 
                        ImageUrl='<%# Eval("Image") %>' Width="250px" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="BookingId" HeaderText="BookingId" 
                SortExpression="BookingId" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" 
                SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" 
                SortExpression="LastName" />
            <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" 
                SortExpression="MobileNo" />
            <asp:BoundField DataField="EMail" HeaderText="EMail" SortExpression="EMail" />
            <asp:BoundField DataField="CarName" HeaderText="CarName" 
                SortExpression="CarName" />
            <asp:BoundField DataField="Variant" HeaderText="Variant" 
                SortExpression="Variant" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="Status" HeaderText="Status" 
                SortExpression="Status" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [BookingId], [FirstName], [LastName], [MobileNo], [EMail], [CarName], [Variant], [Price], [Image], [Status] FROM [TestDriveView] WHERE ([BookingId] = @BookingId)">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="BookingId" PropertyName="Text" 
                Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [Bookingview] WHERE ([BookingId] = @BookingId)">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="BookingId" PropertyName="Text" 
                Type="Decimal" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
</asp:Content>

