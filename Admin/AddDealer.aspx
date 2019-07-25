<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="false" CodeFile="AddDealer.aspx.vb" Inherits="Admin_AddDealer" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="djc_title"><h3>List New Dealer</h3></div>
<table class="table table-condensed">
    <tr>
        <td>
            Name
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="**" 
                ValidationGroup="L"></asp:RequiredFieldValidator>
        </td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <cc1:FilteredTextBoxExtender ID="TextBox1_FilteredTextBoxExtender" 
                    runat="server" Enabled="True" TargetControlID="TextBox1" 
                    ValidChars="qazwsxedcrfvtgbyhnujmikolp QAZWSXEDCRFVTGBYHNUJMIKOLP">
                </cc1:FilteredTextBoxExtender>
        </td>
    </tr>
    <tr>
        <td>
            Location<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="**" 
                ValidationGroup="L"></asp:RequiredFieldValidator>
        </td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
             <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" 
                    runat="server" Enabled="True" TargetControlID="TextBox2" 
                    ValidChars="qazwsxedcrfvtgbyhnujmikolpQAZWSXEDCRFVTGBYHNUJMIKOLP">
                </cc1:FilteredTextBoxExtender>
        </td>
    </tr>
    <tr>
        <td>
            Image<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="FileUpload1" Display="Dynamic" ErrorMessage="**" 
                ValidationGroup="L"></asp:RequiredFieldValidator>
        </td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            Address<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="**" 
                ValidationGroup="L"></asp:RequiredFieldValidator>
        </td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            Contact No.<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="**" 
                ValidationGroup="L"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator1" runat="server" 
                ControlToValidate="TextBox4" ErrorMessage="Invalid" MaximumValue="9999999999" 
                MinimumValue="7200000000" Type="Double"></asp:RangeValidator>
        </td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server" MaxLength="10"></asp:TextBox>
            <cc1:FilteredTextBoxExtender ID="TextBox4_FilteredTextBoxExtender" 
                runat="server" Enabled="True" FilterType="Numbers" TargetControlID="TextBox4">
            </cc1:FilteredTextBoxExtender>
        </td>
    </tr>
    <tr>
        <td>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
        </td>
        <td>
            <div class="djc_addtocart"><asp:Button ID="Button1" runat="server" cssclass="btn button readmore" Text="Add Dealer"  ValidationGroup="L" /></div>
        </td>
    </tr>
</table>
</asp:Content>

