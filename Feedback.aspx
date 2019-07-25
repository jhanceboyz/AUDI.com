<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Feedback.aspx.vb" Inherits="Feedback" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
        width: 149px
    }
    .style3
    {
        width: 383px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3>
    Please Give Us Your Valuable Feedback</h3>
<table class="style1">
    <tr>
        <td class="style2">
            First Name<asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="**" 
                ValidationGroup="L"></asp:RequiredFieldValidator>
        </td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:FilteredTextBoxExtender ID="TextBox1_FilteredTextBoxExtender" 
                runat="server" Enabled="True" TargetControlID="TextBox1" 
                ValidChars="qazwsxedcrfvtgbyhnujmikolpQAZWSXEDCRFVTGBYHNUJMIKOLP">
            </asp:FilteredTextBoxExtender>
        </td>
        <td class="style3">
            Last Name<asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
                runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="**" 
                ValidationGroup="L"></asp:RequiredFieldValidator>
        </td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:FilteredTextBoxExtender ID="TextBox2_FilteredTextBoxExtender" 
                runat="server" Enabled="True" TargetControlID="TextBox2" 
                ValidChars="qazwsxedcrfvtgbyhnujmikolpQAZWSXEDCRFVTGBYHNUJMIKOLP">
            </asp:FilteredTextBoxExtender>
        </td>
    </tr>
    <tr>
        <td class="style2">
            Email Id<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="**" 
                ValidationGroup="L"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="***" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                ValidationGroup="L"></asp:RegularExpressionValidator>
        </td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
        <td class="style3">
            Mobile No.<asp:RequiredFieldValidator ID="RequiredFieldValidator4" 
                runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="**" 
                ValidationGroup="L"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator1" runat="server" 
                ControlToValidate="TextBox4" ErrorMessage="***" MaximumValue="9999999999" 
                MinimumValue="7200000000" Type="Double" ValidationGroup="L"></asp:RangeValidator>
        </td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server" MaxLength="10"></asp:TextBox>
            <asp:FilteredTextBoxExtender ID="TextBox4_FilteredTextBoxExtender" 
                runat="server" Enabled="True" TargetControlID="TextBox4" 
                FilterType="Numbers">
            </asp:FilteredTextBoxExtender>
        </td>
    </tr>
    <tr>
        <td class="style2">
            Message<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="**" 
                ValidationGroup="L"></asp:RequiredFieldValidator>
        </td>
        <td>
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        </td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
        </td>
        <td class="style3">
            <asp:Button ID="Button1" runat="server" Text="Give Feedback"  cssclass="btn button readmore" 
                ValidationGroup="L" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

