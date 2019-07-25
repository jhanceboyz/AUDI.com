<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="ourdealer1.aspx.vb" Inherits="ourdealer1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="DealerId" 
    DataSourceID="SqlDataSource1" RepeatColumns="2" RepeatDirection="Horizontal" 
    Width="100%">
    <ItemTemplate>
        <asp:Image ID="Image1" runat="server" Height="172px" 
            ImageUrl='<%# Eval("Image") %>' Width="171px" />
        <br />
        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
        <br />
        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Address") %>'></asp:Label>
        <br />
        <asp:Label ID="Label3" runat="server" Text='<%# Eval("Location") %>'></asp:Label>
        <br />
    </ItemTemplate>
</asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    SelectCommand="SELECT * FROM [DealerTable]"></asp:SqlDataSource>
</asp:Content>

