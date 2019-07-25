<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="false" CodeFile="Add Technical.aspx.vb" Inherits="Add_Technical" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script src="../media/jui/js/jquery.min.js" type="text/javascript"></script>
  <script src="../media/jui/js/jquery-noconflict.js" type="text/javascript"></script>
  <script src="../ajax.googleapis.com/ajax/libs/jqueryui/1.9.2/jquery-ui.min.js" type="text/javascript"></script>
  <script src="../templates/jm-car-dealer-ef4/cache/jmf_357735f685bcc3d801b6aef3c1c3550de90f.js?t=1450273888" type="text/javascript"></script>
  <script src="../cdnjs.cloudflare.com/ajax/libs/picturefill/2.3.1/picturefill.min.js" type="text/javascript" defer="defer"></script>
  <script src="../templates/jm-car-dealer-ef4/cache/jmf_6670617b1dd613fde5ff88bedb5b5ae97c97.js?t=1450284527" type="text/javascript" defer="defer"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="djc_title"><h3>List Technical Features for Car</h3></div>
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
            Tyre Size<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="**" 
                ValidationGroup="L"></asp:RequiredFieldValidator>
        </td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            Transmission Type<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="**" 
                ValidationGroup="L"></asp:RequiredFieldValidator>
        </td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            Max Power<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="**" 
                ValidationGroup="L"></asp:RequiredFieldValidator>
        </td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            Max Torqur<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="**" 
                ValidationGroup="L"></asp:RequiredFieldValidator>
        </td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            Bore Stroke<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="**" 
                ValidationGroup="L"></asp:RequiredFieldValidator>
        </td>
        <td>
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            Fuel Injection<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                ControlToValidate="TextBox6" Display="Dynamic" ErrorMessage="**" 
                ValidationGroup="L"></asp:RequiredFieldValidator>
        </td>
        <td>
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            Engine Type<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                ControlToValidate="TextBox7" Display="Dynamic" ErrorMessage="**" 
                ValidationGroup="L"></asp:RequiredFieldValidator>
        </td>
        <td>
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            Number of Cylinder<asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                ControlToValidate="TextBox8" Display="Dynamic" ErrorMessage="**" 
                ValidationGroup="L"></asp:RequiredFieldValidator>
        </td>
        <td>
            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            Position of engine
            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                ControlToValidate="TextBox9" Display="Dynamic" ErrorMessage="**" 
                ValidationGroup="L"></asp:RequiredFieldValidator>
        </td>
        <td>
            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            Layout<asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                ControlToValidate="TextBox10" Display="Dynamic" ErrorMessage="**" 
                ValidationGroup="L"></asp:RequiredFieldValidator>
        </td>
        <td>
            <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            Compression Ratio<asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                ControlToValidate="TextBox11" Display="Dynamic" ErrorMessage="**" 
                ValidationGroup="L"></asp:RequiredFieldValidator>
        </td>
        <td>
            <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <div class="djc_addtocart"><asp:Button ID="Button1" runat="server" cssclass="btn button readmore" Text="Add Technical Features"  ValidationGroup="L" /></div>
        </td>
    </tr>
</table>
</asp:Content>

