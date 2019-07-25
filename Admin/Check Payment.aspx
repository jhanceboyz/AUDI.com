<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="false" CodeFile="Check Payment.aspx.vb" Inherits="Admin_Check_Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script src="../media/jui/js/jquery.min.js" type="text/javascript"></script>
  <script src="../media/jui/js/jquery-noconflict.js" type="text/javascript"></script>
  <script src="../ajax.googleapis.com/ajax/libs/jqueryui/1.9.2/jquery-ui.min.js" type="text/javascript"></script>
  <script src="../templates/jm-car-dealer-ef4/cache/jmf_357735f685bcc3d801b6aef3c1c3550de90f.js?t=1450273888" type="text/javascript"></script>
  <script src="../cdnjs.cloudflare.com/ajax/libs/picturefill/2.3.1/picturefill.min.js" type="text/javascript" defer="defer"></script>
  <script src="../templates/jm-car-dealer-ef4/cache/jmf_6670617b1dd613fde5ff88bedb5b5ae97c97.js?t=1450284527" type="text/javascript" defer="defer"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="djc_title"><h3>Check Payments Detail</h3></div>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" DataKeyNames="PaymentId" 
        DataSourceID="SqlDataSource1" Width="100%">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="PaymentId" HeaderText="PaymentId" ReadOnly="True" 
                SortExpression="PaymentId" />
            <asp:BoundField DataField="BookingId" HeaderText="BookingId" 
                SortExpression="BookingId" />
            <asp:BoundField DataField="CardType" HeaderText="CardType" 
                SortExpression="CardType" />
            <asp:BoundField DataField="Amount" HeaderText="Amount" 
                SortExpression="Amount" />
            <asp:BoundField DataField="CardNumber" HeaderText="CardNumber" 
                SortExpression="CardNumber" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="ExpDate" HeaderText="ExpDate" 
                SortExpression="ExpDate" />
            <asp:BoundField DataField="CVC" HeaderText="CVC" SortExpression="CVC" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [PaymentTable] WHERE [PaymentId] = @PaymentId" 
        InsertCommand="INSERT INTO [PaymentTable] ([PaymentId], [BookingId], [CardType], [Amount], [CardNumber], [Name], [ExpDate], [CVC]) VALUES (@PaymentId, @BookingId, @CardType, @Amount, @CardNumber, @Name, @ExpDate, @CVC)" 
        SelectCommand="SELECT * FROM [PaymentTable] ORDER BY [PaymentId] DESC" 
        UpdateCommand="UPDATE [PaymentTable] SET [BookingId] = @BookingId, [CardType] = @CardType, [Amount] = @Amount, [CardNumber] = @CardNumber, [Name] = @Name, [ExpDate] = @ExpDate, [CVC] = @CVC WHERE [PaymentId] = @PaymentId">
        <DeleteParameters>
            <asp:Parameter Name="PaymentId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="PaymentId" Type="Int32" />
            <asp:Parameter Name="BookingId" Type="Int32" />
            <asp:Parameter Name="CardType" Type="String" />
            <asp:Parameter Name="Amount" Type="Decimal" />
            <asp:Parameter Name="CardNumber" Type="Decimal" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="ExpDate" Type="String" />
            <asp:Parameter Name="CVC" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="BookingId" Type="Int32" />
            <asp:Parameter Name="CardType" Type="String" />
            <asp:Parameter Name="Amount" Type="Decimal" />
            <asp:Parameter Name="CardNumber" Type="Decimal" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="ExpDate" Type="String" />
            <asp:Parameter Name="CVC" Type="Int32" />
            <asp:Parameter Name="PaymentId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

