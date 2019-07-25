<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="CarBooking.aspx.vb" Inherits="CarBooking" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
.round
{
    border-radius:90px;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section id="jm-main"><div id="jm-main-in" class="container-fluid container-large"><div id="jm-main-space"><div class="row-fluid">
<div id="jm-content" class="span12" data-xtablet="span12" data-tablet="span12" data-mobile="span12"><div id="jm-maincontent">
<div id="djcatalog" class="djc_clearfix djc_item djc_theme_jm-car-dealer-ef4">	
    <asp:DataList ID="DataList2" runat="server" DataKeyField="carid" DataSourceID="SqlDataSource5" RepeatColumns="3" Width="100%">
    <ItemTemplate>
    <div class="djc_subcategory djc_item pull_left djc_item_col_first" style="width:100%"><div class="djc_item_bg"><div class="djc_item_in djc_clearfix" style="text-align:left; padding-left:25px">
		<div class="djc_image">
        	<a href='<%# Eval("carid", "Cardesc.aspx?i={0}") %>'><asp:Image ID="ImageButton1"  cssclass="img-polaroid round" runat="server" Height="250" ImageUrl='<%# Eval("Image") %>' /></a>
	    </div><br>
		<div class="djc_title"><h3><a href='<%# Eval("carid", "Cardesc.aspx?i={0}") %>' ><asp:Label ID="Label1" runat="server" Text='<%# Eval("CarName") %>'></asp:Label></a></h3></div>
	    <div class="djc_description"><div class="djc_item_info">
            <div class="djc_category_info">Category:<a href=""><span>SEDAN</span></a></div>
			<div class="djc_producer_info">
                Variant:<a class="modal" rel="{handler: 'iframe', size: {x: 800, y: 600}}" href=""><span><asp:Label ID="Label2" runat="server" Text='<%# Eval("Variant") %>'></asp:Label></span></a>
                <a class="djc_producer_items_link btn btn-mini button" href=""><span>Download Brouchures</span></a>
	        </div>
			<div class="djc_price">Price: <span><asp:Label ID="Label3" runat="server" Text='<%# Eval("price") %>'></asp:Label></span></div>	
            <p><strong>About <asp:Label ID="Label4" runat="server" Text='<%# Eval("CarName") %>'></asp:Label></strong></p>
            <ul>
                <li class="span9"><asp:Label ID="Label5" runat="server" Text='<%# Eval("Description") %>'></asp:Label></li>                
            </ul>			                   	    		
	    </div></div><br /><br />		
	</div></div><div class="djc_clear"></div></div>
    </ItemTemplate></asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Cartable] WHERE ([carid] = @carid)">
        <SelectParameters><asp:QueryStringParameter Name="carid" QueryStringField="i" Type="Int32" /></SelectParameters>
    </asp:SqlDataSource>  
    <h3>Give Your Detail For Car Booking</h3>
    <table class="table table-condensed">
        <tr>
            <td>First Name<asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                    runat="server" ControlToValidate="TextBox1" Display="Dynamic" 
                    ErrorMessage="**" ValidationGroup="L"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <cc1:FilteredTextBoxExtender ID="TextBox1_FilteredTextBoxExtender" 
                    runat="server" Enabled="True" TargetControlID="TextBox1" 
                    ValidChars="qazwsxedcrfvtgbyhnujmikolpPLOIKUJMYHNTGBRFVEDCWSXQAZ">
                </cc1:FilteredTextBoxExtender>
            </td>
            <td>Last Name<asp:RequiredFieldValidator ID="RequiredFieldValidator5" 
                    runat="server" ControlToValidate="TextBox3" Display="Dynamic" 
                    ErrorMessage="**" ValidationGroup="L"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <cc1:FilteredTextBoxExtender ID="TextBox3_FilteredTextBoxExtender" 
                    runat="server" Enabled="True" TargetControlID="TextBox3" 
                    ValidChars="qazwsxedcrfvtgbyhnujmikolpPLOIKUJMYHNTGBRFVEDCWSXQAZ">
                </cc1:FilteredTextBoxExtender>
            </td>
        </tr>
        <tr>
            <td>Mobile No.<asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
                    runat="server" ControlToValidate="TextBox2" Display="Dynamic" 
                    ErrorMessage="**" ValidationGroup="L"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" 
                    ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Invalid" 
                    MaximumValue="9999999999" MinimumValue="7200000000" Type="Double" 
                    ValidationGroup="L"></asp:RangeValidator>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" MaxLength="10"></asp:TextBox>
                <cc1:FilteredTextBoxExtender ID="TextBox2_FilteredTextBoxExtender" 
                    runat="server" Enabled="True" FilterType="Numbers" TargetControlID="TextBox2">
                </cc1:FilteredTextBoxExtender>
            </td>
            <td>Email<asp:RequiredFieldValidator ID="RequiredFieldValidator6" 
                    runat="server" ControlToValidate="TextBox4" Display="Dynamic" 
                    ErrorMessage="**" ValidationGroup="L"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="Invalid" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    ValidationGroup="L"></asp:RegularExpressionValidator>
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Profession<asp:RequiredFieldValidator ID="RequiredFieldValidator3" 
                    runat="server" ControlToValidate="DropDownList1" Display="Dynamic" 
                    ErrorMessage="**" ValidationGroup="L" InitialValue="0"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Value="0">Select</asp:ListItem>
                    <asp:ListItem>Business Man</asp:ListItem>
                    <asp:ListItem>Govt Service</asp:ListItem>
                    <asp:ListItem>Sports Person</asp:ListItem>
                    <asp:ListItem>Private Sector</asp:ListItem>
                    <asp:ListItem>Doctor</asp:ListItem>
                    <asp:ListItem>Teacher</asp:ListItem>
                    <asp:ListItem>IT Sector</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>Salary<asp:RequiredFieldValidator ID="RequiredFieldValidator7" 
                    runat="server" ControlToValidate="DropDownList2" Display="Dynamic" 
                    ErrorMessage="**" ValidationGroup="L" InitialValue="0"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem Value="0">Select</asp:ListItem>
                    <asp:ListItem>10-25 Lakh PA</asp:ListItem>
                    <asp:ListItem>25-50 Lakh PA</asp:ListItem>
                    <asp:ListItem>50 Lakh - 1 Cr PA</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Select Dealer<asp:RequiredFieldValidator ID="RequiredFieldValidator4" 
                    runat="server" ControlToValidate="DropDownList3" Display="Dynamic" 
                    ErrorMessage="**" ValidationGroup="L"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList3" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="DealerId">
                </asp:DropDownList>
            </td>
            <td>Booking Amount<asp:RequiredFieldValidator ID="RequiredFieldValidator8" 
                    runat="server" ControlToValidate="TextBox5" Display="Dynamic" 
                    ErrorMessage="**" ValidationGroup="L"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" ReadOnly="True">500000</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Upload Proof<asp:RequiredFieldValidator ID="RequiredFieldValidator9" 
                    runat="server" ControlToValidate="FileUpload1" Display="Dynamic" 
                    ErrorMessage="**" ValidationGroup="L"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Literal ID="Literal1" runat="server"></asp:Literal>
            </td>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="4" style="text-align:center">
                <div class="djc_addtocart">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [Name], [DealerId] FROM [DealerTable]">
                    </asp:SqlDataSource>
                    <asp:Button ID="Button1" runat="server" cssclass="btn button readmore" 
                        Text="Proceed To DownPayment For Booking" ValidationGroup="L" />
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                </div>
            </td>
        </tr>
    </table>
</div>
</div></div>
</div></div></div></section>
</asp:Content>

