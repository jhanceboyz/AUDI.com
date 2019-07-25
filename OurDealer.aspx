<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="media/jui/js/jquery.min.js" type="text/javascript"></script>
  <script src="media/jui/js/jquery-noconflict.js" type="text/javascript"></script>
  <script src="ajax.googleapis.com/ajax/libs/jqueryui/1.9.2/jquery-ui.min.js" type="text/javascript"></script>
  <script src="templates/jm-car-dealer-ef4/cache/jmf_357735f685bcc3d801b6aef3c1c3550de90f.js?t=1450273888" type="text/javascript"></script>
  <script src="cdnjs.cloudflare.com/ajax/libs/picturefill/2.3.1/picturefill.min.js" type="text/javascript" defer="defer"></script>
  <script src="templates/jm-car-dealer-ef4/cache/jmf_6670617b1dd613fde5ff88bedb5b5ae97c97.js?t=1450284527" type="text/javascript" defer="defer"></script>
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
		<a itemprop="item" href="" class="pathway"><span itemprop="name">Our Dealers</span></a>
		<span class="divider"><img src="templates/jm-car-dealer-ef4/images/system/arrow.png" alt="" /></span>
	</li>    
</ul></div></div></section>

<section id="jm-main"><div id="jm-main-in" class="container-fluid container-large"><div id="jm-main-space"><div class="row-fluid">
<div id="jm-content" class="span12" data-xtablet="span12" data-tablet="span12" data-mobile="span12"><div id="jm-maincontent">
<div id="djcatalog" class="djc_list djc_theme_jm-car-dealer-ef4">
    <div class="djc_category djc_clearfix">
		<div class="djc_images pull-right"><div class="djc_mainimage"><a id="djc_mainimagelink" rel="djc_lb_0" title="1" href="">
			<img class="img-polaroid" id="djc_mainimage" alt="1" src="media/djcatalog2/images/category/0/audi_l.png" />
		</a></div></div>		
	    <h2 class="djc_title">OUR DEALER</h2>
		<div class="djc_description"><div class="djc_fulltext">
		    <p>Get Detail of Your Nearest Dealer</p>			
        </div></div>			
	</div>
    <div class="djc_items djc_clearfix"><div class="djc_clearfix djc_item_row djc_item_row_first_last_0 djc2_cols_3">    
    <asp:DataList ID="DataList1" runat="server" DataKeyField="carid" DataSourceID="SqlDataSource1" RepeatColumns="3" Width="100%">
    <ItemTemplate>
    <div class="djc_subcategory djc_item pull_left djc_item_col_first" style="width:100%"><div class="djc_item_bg"><div class="djc_item_in djc_clearfix">
		<div class="djc_image">
        	<a href=''><asp:Image ID="ImageButton1"  cssclass="img-polaroid" width="345px" height="194px" runat="server" ImageUrl='<%# Eval("Image") %>' /></a>
	    </div>
		<div class="djc_title"><h3><a href='' ><asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>'></asp:Label></a></h3></div>
	    <div class="djc_description"><div class="djc_item_info">
            <div class="djc_category_info">Location:<a href=""><span><asp:Label ID="Label4" runat="server" Text='<%# Eval("Location") %>'></asp:Label></span></a></div>
			<div class="djc_producer_info">
                Contact No:<a class="modal" rel="{handler: 'iframe', size: {x: 800, y: 600}}" href=""><span><asp:Label ID="Label2" runat="server" Text='<%# Eval("ContactNo") %>'></asp:Label></span></a>
            </div>
			<div class="djc_price">Price: <span><asp:Label ID="Label3" runat="server" Text='<%# Eval("Address") %>'></asp:Label></span></div>				                   	    		
	    </div></div>		
	</div></div><div class="djc_clear"></div></div>
    </ItemTemplate></asp:DataList>
    </div></div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [DealerTable] WHERE ([Status] = @Status) ORDER BY [DealerId] DESC">
        <SelectParameters>
            <asp:Parameter DefaultValue="Yes" Name="Status" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
	
</div>
</div></div>
</div></div></div></section>
</asp:Content>

