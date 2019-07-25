<%@ Page Title="" Language="VB" MasterPageFile="~/admin/MasterPage.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link rel="stylesheet" href="../templates/jm-car-dealer-ef4/cache/jmf_ace3fcdd3bc853a942b723638b0ee4a3c2cd.css?t=1447933213" type="text/css" />
  <link rel="stylesheet" href="../ajax.googleapis.com/ajax/libs/jqueryui/1.9.2/themes/base/jquery-ui.css" type="text/css" />
  <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Lato:400,700,900,300,400italic" type="text/css" />
  <link rel="stylesheet" href="../maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" type="text/css" />
  <style type="text/css">
 .djc_item .djc_mainimage { margin-left: 20px; margin-bottom: 20px; }  .djc_item .djc_mainimage img { padding: 0px; }  .djc_item .djc_thumbnail { margin-left: 20px; margin-bottom: 20px; }  .djc_item .djc_thumbnail img {  padding: 0px;  }  .djc_item .djc_images {width: 701px; }  .djc_item .djc_thumbnail { width: 215px; }  .djc_items .djc_image img { padding: 0px;} .djc_related_items .djc_image img { padding: 0px;} .djc_items .djc_image img {max-width: 345px;} .djc_category .djc_mainimage { margin-left: 20px; margin-bottom: 20px; }  .djc_category .djc_mainimage img { padding: 0px; }  .djc_category .djc_thumbnail { margin-left: 20px; margin-bottom: 20px; }  .djc_category .djc_thumbnail img {  padding: 0px;  }  .djc_category .djc_images {width: 172px; }  .djc_category .djc_thumbnail { width: 215px; }  .djc_subcategory .djc_image img { padding: 0px;} .djc_subcategory .djc_image img {max-width: 150px;} .djc_producer .djc_mainimage { margin-left: 20px; margin-bottom: 20px; }  .djc_producer .djc_mainimage img { padding: 0px; }  .djc_producer .djc_thumbnail { margin-left: 20px; margin-bottom: 20px; }  .djc_producer .djc_thumbnail img {  padding: 0px;  }  .djc_producer .djc_images {width: 372px; }  .djc_producer .djc_thumbnail { width: 215px; } 
		.dj-hideitem, li.item-484, li.item-505, li.item-506, li.item-584, li.item-585, li.item-586, li.item-587, li.item-496, li.item-488 { display: none !important; }

		#dj-megamenu141mobile { display: none; }
		@media (max-width: 979px) {
			#dj-megamenu141, #dj-megamenu141sticky, #dj-megamenu141placeholder { display: none; }
			#dj-megamenu141mobile { display: block; }
		}
	
  </style>
  <script src="../media/jui/js/jquery.min.js" type="text/javascript"></script>
  <script src="../media/jui/js/jquery-noconflict.js" type="text/javascript"></script>
  <script src="../ajax.googleapis.com/ajax/libs/jqueryui/1.9.2/jquery-ui.min.js" type="text/javascript"></script>
  <script src="../templates/jm-car-dealer-ef4/cache/jmf_357735f685bcc3d801b6aef3c1c3550de90f.js?t=1450273888" type="text/javascript"></script>
  <script src="../cdnjs.cloudflare.com/ajax/libs/picturefill/2.3.1/picturefill.min.js" type="text/javascript" defer="defer"></script>
  <script src="../templates/jm-car-dealer-ef4/cache/jmf_6670617b1dd613fde5ff88bedb5b5ae97c97.js?t=1450284527" type="text/javascript" defer="defer"></script>
  <script type="text/javascript">
      jQuery(window).on('load', function () {
          new JCaption('img.caption');
      });
      jQuery(document).ready(function () {
          jQuery('.hasTooltip').tooltip({ "html": true, "container": "body" });
      });
      jQuery(function ($) {
          SqueezeBox.initialize({});
          SqueezeBox.assign($('a.modal').get(), {
              parse: 'rel'
          });
      });
      function jModalClose() {
          SqueezeBox.close();
      }

      //<!--
      var sliderOptions_311 = {
          moduleId: '311',
          baseurl: 'http://templates.joomla-monster.com/joomla30/jm-car-dealer/index.php?option=com_djcatalog2&format=raw&task=modfp',
          showcategorytitle: '1',
          showtitle: '1',
          showproducer: '0',
          showprice: '0',
          linktitle: '1',
          showpagination: '1',
          order: '0',
          orderdir: '0',
          featured_only: '1',
          featured_first: '0',
          columns: '1',
          rows: '3',
          allcategories: '0',
          categories: '',
          trunc: '1',
          trunclimit: '250',
          modal: '1',
          showreadmore: '1',
          readmoretext: 'Read+more',
          url: '',
          largewidth: '710',
          largeheight: '400',
          largecrop: '1',
          smallwidth: '213',
          smallheight: '120',
          smallcrop: '1'
      };

      window.addEvent('domready', function () {
          this.DJFrontpage_311 = new DJFrontpage(sliderOptions_311);
      });
      // -->

      window.addEvent('domready', function () { if (!this.DJSlideshow28m345) this.DJSlideshow28m345 = new DJImageMslider('dj-mslider28m345', { autoplay: 0, pause_autoplay: 1, transition: Fx.Transitions.Expo.easeInOut, duration: 1000, delay: 7000, slider_type: 'left', desc_effect: 'fade', width: 345, height: 405, spacing: 30, navi_margin: 0, preload: 0, visible: 4, dwidth: 345, lag: 100 }) });

      (function () {
          var cb = function () {
              var add = function (css) {
                  var l = document.createElement('link'); l.rel = 'stylesheet';
                  l.href = css;
                  var h = document.getElementsByTagName('head')[0]; h.parentNode.insertBefore(l, h);
              }
              add('../media/djextensions/css/animate.min.css');
              add('../media/djextensions/css/animate.ext.css');

          };
          var raf = requestAnimationFrame || mozRequestAnimationFrame || webkitRequestAnimationFrame || msRequestAnimationFrame;
          if (raf) raf(cb);
          else window.addEventListener('load', cb);
      })();
  </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section id="jm-header" class=""><div id="jm-header-in" class="container-fluid container-large"><div id="jm-header-space"><div class="jm-module  slider-ms">
<div  class="jm-module-in"><div class="jm-module-content clearfix notitle">
	<script type="text/javascript">
	    jQuery(window).load(function () { jQuery('#nivoSlider20m348').nivoSlider({ effect: 'random' }); });
    </script>
	<div id="nivoSlider-wrapper20m348" class="slider-wrapper"><div id="nivoSlider20m348" class="nivoSlider">
        <a href=""><img src="../slider/1.jpg" class="dj-image" /></a>
        <a href=""><img src="../slider/2.jpg" class="dj-image" /></a>
        <a href=""><img src="../slider/3.jpg" class="dj-image" /></a>
        <a href=""><img src="../slider/4.jpg" class="dj-image" /></a>
        <a href=""><img src="../slider/5.jpg" class="dj-image" /></a>
        <a href=""><img src="../slider/6.jpg" class="dj-image" /></a>
        <a href=""><img src="../slider/7.jpg" class="dj-image" /></a>
        <a href=""><img src="../slider/8.jpg" class="dj-image" /></a>
        <a href=""><img src="../slider/9.jpg" class="dj-image" /></a>
        <a href=""><img src="../slider/10.jpg" class="dj-image" /></a>
        <a href=""><img src="../slider/11.jpg" class="dj-image" /></a>
        <a href=""><img src="../slider/12.jpg" class="dj-image" /></a>
        <a href=""><img src="../slider/13.jpg" class="dj-image" /></a>
        <a href=""><img src="../slider/14.jpg" class="dj-image" /></a>
        <a href=""><img src="../slider/15.jpg" class="dj-image" /></a>
        <a href=""><img src="../slider/16.jpg" class="dj-image" /></a>
        <a href=""><img src="../slider/17.jpg" class="dj-image" /></a>
        <a href=""><img src="../slider/18.jpg" class="dj-image" /></a> 
        <a href=""><img src="../slider/19.jpg" class="dj-image" /></a>
        <a href=""><img src="../slider/20.jpg" class="dj-image" /></a>
        <a href=""><img src="../slider/21.jpg" class="dj-image" /></a>
        <a href=""><img src="../slider/22.jpg" class="dj-image" /></a>
        <a href=""><img src="../slider/23.jpg" class="dj-image" /></a>
        <a href=""><img src="../slider/24.jpg" class="dj-image" /></a>
        <a href=""><img src="../slider/25.jpg" class="dj-image" /></a>
        <a href=""><img src="../slider/26.jpg" class="dj-image" /></a>
        <a href=""><img src="../slider/27.jpg" class="dj-image" /></a>
        <a href=""><img src="../slider/28.jpg" class="dj-image" /></a> 
        <a href=""><img src="../slider/29.jpg" class="dj-image" /></a> 
    </div></div>
</div></div></div></div></div></section>
</asp:Content>

