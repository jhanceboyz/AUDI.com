<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default2.aspx.vb" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
            DataKeyField="DealerId" RepeatColumns="3" Width="100%">
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image") %>' />
                <br />
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                <br />
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("ContactNo") %>'></asp:Label>
                <br />
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Address") %>'></asp:Label>
                <br />
                <asp:Label ID="Label4" runat="server" Text='<%# Eval("Location") %>'></asp:Label>
<br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [DealerTable] WHERE ([Status] = @Status) ORDER BY [DealerId] DESC">
            <SelectParameters>
                <asp:Parameter DefaultValue="Yes" Name="Status" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
