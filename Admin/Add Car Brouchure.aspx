<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="false" CodeFile="Add Car Brouchure.aspx.vb" Inherits="Add_Car_Brouchure" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script src="../media/jui/js/jquery.min.js" type="text/javascript"></script>
  <script src="../media/jui/js/jquery-noconflict.js" type="text/javascript"></script>
  <script src="../ajax.googleapis.com/ajax/libs/jqueryui/1.9.2/jquery-ui.min.js" type="text/javascript"></script>
  <script src="../templates/jm-car-dealer-ef4/cache/jmf_357735f685bcc3d801b6aef3c1c3550de90f.js?t=1450273888" type="text/javascript"></script>
  <script src="../cdnjs.cloudflare.com/ajax/libs/picturefill/2.3.1/picturefill.min.js" type="text/javascript" defer="defer"></script>
  <script src="../templates/jm-car-dealer-ef4/cache/jmf_6670617b1dd613fde5ff88bedb5b5ae97c97.js?t=1450284527" type="text/javascript" defer="defer"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="djc_title"><h3>List Burochure for Car</h3></div>
<table class="table table-condensed">
    <tr>
        <td>
            Category<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="DropDownList1" Display="Dynamic" ErrorMessage="**" 
                ValidationGroup="L"></asp:RequiredFieldValidator>
        </td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                DataSourceID="SqlDataSource1" DataTextField="CategoryName" 
                DataValueField="CategoryId">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
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
                DataSourceID="SqlDataSource2" DataTextField="CarName" DataValueField="CarName">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
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
                DataSourceID="SqlDataSource3" DataTextField="Variant" DataValueField="carid">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
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
        <td>
            Title<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="**" 
                ValidationGroup="L"></asp:RequiredFieldValidator>
        </td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            Brouchure</td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <div class="djc_addtocart"><asp:Button ID="Button1" runat="server" cssclass="btn button readmore" Text="Add Car Brouchure" ValidationGroup="L" /></div>
        </td>
    </tr>
</table>
</asp:Content>

