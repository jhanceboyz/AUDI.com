<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" %>

<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        Label6.Text= Session("bid")
    End Sub
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="media/jui/js/jquery.min.js" type="text/javascript"></script>
  <script src="media/jui/js/jquery-noconflict.js" type="text/javascript"></script>
  <script src="ajax.googleapis.com/ajax/libs/jqueryui/1.9.2/jquery-ui.min.js" type="text/javascript"></script>
  <script src="templates/jm-car-dealer-ef4/cache/jmf_357735f685bcc3d801b6aef3c1c3550de90f.js?t=1450273888" type="text/javascript"></script>
  <script src="cdnjs.cloudflare.com/ajax/libs/picturefill/2.3.1/picturefill.min.js" type="text/javascript" defer="defer"></script>
  <script src="templates/jm-car-dealer-ef4/cache/jmf_6670617b1dd613fde5ff88bedb5b5ae97c97.js?t=1450284527" type="text/javascript" defer="defer"></script>
<style>
    
.round
{
    border-radius:90px;
    width:80%;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section id="jm-breadcrumbs" class=""><div id="jm-breadcrumbs-in" class="container-fluid container-large"><div id="jm-breadcrumbs-space">
<ul itemscope itemtype="" class="breadcrumb">
	<li class="active"><span class="divider icon-location"></span></li>
	<li itemprop="itemListElement" itemscope itemtype="">
        <a itemprop="item" href="" class="pathway"><span itemprop="name">Home</span></a>
		<span class="divider"><img src="templates/jm-car-dealer-ef4/images/system/arrow.png" alt="" /></span>								
	</li>
	<li itemprop="itemListElement" itemscope itemtype="">
		<a itemprop="item" href="" class="pathway"><span itemprop="name">Cars</span></a>
		<span class="divider"><img src="templates/jm-car-dealer-ef4/images/system/arrow.png" alt="" /></span>
	</li>	
</ul></div></div></section>
<div class="djc_title"><h3>Thanks for Your Booking The Car, Your Booking Order No is <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>. Our Team will Call you Soon.</h3></div>

<section id="jm-main"><div id="jm-main-in" class="container-fluid container-large"><div id="jm-main-space"><div class="row-fluid">
<div id="jm-content" class="span12" data-xtablet="span12" data-tablet="span12" data-mobile="span12"><div id="jm-maincontent">
<div id="djcatalog" class="djc_clearfix djc_item djc_theme_jm-car-dealer-ef4">	
    <asp:DataList ID="DataList2" runat="server" DataKeyField="carid" DataSourceID="SqlDataSource5" RepeatColumns="3" Width="100%">
    <ItemTemplate>
    <div class="djc_subcategory djc_item pull_left djc_item_col_first" style="width:100%"><div class="djc_item_bg"><div class="djc_item_in djc_clearfix" style="text-align:left; padding-left:25px">
		<div class="djc_image" style="text-align:center">
        	<a href='<%# Eval("carid", "Cardesc.aspx?i={0}") %>'><asp:Image ID="ImageButton1"  cssclass="img-polaroid round" runat="server" ImageUrl='<%# Eval("Image") %>' /></a>
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
		<div class="djc_addtocart"><asp:Button ID="Button1" runat="server" PostBackUrl='<%# Eval("carid", "~/TestDrive.aspx?i={0}") %>' cssclass="button btn" Text="Book a Test Drive"></asp:Button></div>            
        
		<div class="djc_readon"><a class="btn button readmore" href='<%# Eval("carid", "CarBooking.aspx?i={0}") %>' class="readmore">Drive It To Your Home</a></div>
	</div></div><div class="djc_clear"></div></div>
    </ItemTemplate></asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Cartable] WHERE ([carid] = @carid)">
        <SelectParameters><asp:QueryStringParameter Name="carid" QueryStringField="i" Type="Int32" /></SelectParameters>
    </asp:SqlDataSource>    
	<div class="djc_description">        
		<div class="djc_clear"></div>
        <div class="djc_tabs">
            <ul class="nav nav-tabs">
                <li class="nav-toggler active" id="details"><a href="">Features</a></li>
                <li class="nav-toggler" id="video"><a href="">Technical Features</a></li>
                <li class="nav-toggler" id="test_drive"><a href="">Gallery</a></li>
            </ul>
            <div class="tab-content">
                <div class="tab-pane active" id="tab-audi-a7-1"><div>
                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Carid" DataSourceID="SqlDataSource1" Width="65%">
                    <Fields>
                        <asp:BoundField DataField="Seating" HeaderText="Seating" SortExpression="Seating" />
                        <asp:BoundField DataField="WheelBase" HeaderText="Wheel Base" SortExpression="WheelBase" />
                        <asp:BoundField DataField="RimSize" HeaderText="Rim Size" SortExpression="RimSize" />
                        <asp:BoundField DataField="Mileage" HeaderText="Mileage" SortExpression="Mileage" />
                        <asp:BoundField DataField="DriveTrain" HeaderText="Drive Train" SortExpression="DriveTrain" />
                        <asp:BoundField DataField="TurningRadies" HeaderText="Turning Radius" SortExpression="TurningRadies" />
                        <asp:BoundField DataField="EngineDisplacement" HeaderText="Engine Displacement" SortExpression="EngineDisplacement" />
                        <asp:BoundField DataField="EngineTechnology" HeaderText="Engine Technology" SortExpression="EngineTechnology" />
                        <asp:BoundField DataField="FuelCapacity" HeaderText="Fuel Capacity" SortExpression="FuelCapacity" />
                        <asp:BoundField DataField="Fuel" HeaderText="Fuel" SortExpression="Fuel" />
                        <asp:BoundField DataField="Range" HeaderText="Range" SortExpression="Range" />
                        <asp:BoundField DataField="EntertainmentFeature" HeaderText="Entertainment Feature" SortExpression="EntertainmentFeature" />
                        <asp:BoundField DataField="Kmph" HeaderText="Kmph" SortExpression="Kmph" />
                        <asp:BoundField DataField="Security" HeaderText="Security" SortExpression="Security" />
                    </Fields>
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [FeatureTable] WHERE ([Carid] = @Carid)">
                        <SelectParameters><asp:QueryStringParameter Name="Carid" QueryStringField="i" Type="String" /></SelectParameters>
                    </asp:SqlDataSource>
                    
                </div></div>
                <div class="tab-pane" id="tab-audi-a7-2"><div>
                    <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" DataKeyNames="CarId" DataSourceID="SqlDataSource2" Width="65%">
                    <Fields>
                        <asp:BoundField DataField="TyreSize" HeaderText="Tyre Size" SortExpression="TyreSize" />
                        <asp:BoundField DataField="TransmissionType" HeaderText="Transmission Type" SortExpression="TransmissionType" />
                        <asp:BoundField DataField="MaxPower" HeaderText="Max Power" SortExpression="MaxPower" />
                        <asp:BoundField DataField="MaxTorque" HeaderText="Max Torque" SortExpression="MaxTorque" />
                        <asp:BoundField DataField="BoreStroke" HeaderText="Bore Stroke" SortExpression="BoreStroke" />
                        <asp:BoundField DataField="FuelInjection" HeaderText="Fuel Injection" SortExpression="FuelInjection" />
                        <asp:BoundField DataField="EngineType" HeaderText="Engine Type" SortExpression="EngineType" />
                        <asp:BoundField DataField="NumberofCylinder" HeaderText="Number of Cylinder" SortExpression="NumberofCylinder" />
                        <asp:BoundField DataField="PositionofEngine" HeaderText="Position of Engine" SortExpression="PositionofEngine" />
                        <asp:BoundField DataField="Layout" HeaderText="Layout" SortExpression="Layout" />
                        <asp:BoundField DataField="CompressionRatio" HeaderText="Compression Ratio" SortExpression="CompressionRatio" />
                    </Fields>
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [TechnicalTable] WHERE ([CarId] = @CarId)">
                        <SelectParameters><asp:QueryStringParameter Name="CarId" QueryStringField="i" Type="Int32" /></SelectParameters>
                    </asp:SqlDataSource>
                </div></div>
                <div class="tab-pane" id="tab-audi-a7-3"><div>
                    <asp:DataList ID="DataList1" runat="server" DataKeyField="Galleryid" DataSourceID="SqlDataSource4" RepeatColumns="3" Width="100%"> 
                    <ItemTemplate>
                        <div class="djc_subcategory djc_item pull_left djc_item_col_first" style="width:80%"><div class="djc_item_bg"><div class="djc_item_in djc_clearfix">
                        <div class="djc_image">
        	                <a href=''><asp:Image ID="ImageButton1"  cssclass="img-polaroid" width="345px" height="194px" runat="server" ImageUrl='<%# Eval("Image") %>' /></a>
	                    </div></div></div></div>
                    </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Cargallerytable] WHERE (([CarId] = @CarId) AND ([Status] = @Status)) ORDER BY [Galleryid] DESC">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="CarId" QueryStringField="i" Type="Int32" />
                        <asp:Parameter DefaultValue="Yes" Name="Status" Type="String" />
                    </SelectParameters>
                    </asp:SqlDataSource>
                </div></div>
            </div>            	
        </div>
    </div>
</div>
</div></div>
</div></div></div></section>
</asp:Content>

