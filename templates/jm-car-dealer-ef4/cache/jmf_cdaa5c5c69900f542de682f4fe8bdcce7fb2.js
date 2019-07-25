/* EF4 JSMin */
(function(a){var b=function(b,c){var d=a.extend({},a.fn.nivoSlider.defaults,c);var e={currentSlide:0,currentImage:"",totalSlides:0,running:false,paused:false,stop:false,controlNavEl:false};var f=a(b);f.data("nivo:vars",e).addClass("nivoSlider");var g=f.children();g.each(function(){var b=a(this);var c="";if(!b.is("img")){if(b.is("a")){b.addClass("nivo-imageLink");c=b}b=b.find("img:first")}var d=d===0?b.attr("width"):b.width(),f=f===0?b.attr("height"):b.height();if(c!==""){c.css("display","none")}b.css("display","none");e.totalSlides++});if(d.randomStart){d.startSlide=Math.floor(Math.random()*e.totalSlides)}if(d.startSlide>0){if(d.startSlide>=e.totalSlides){d.startSlide=e.totalSlides-1}e.currentSlide=d.startSlide}if(a(g[e.currentSlide]).is("img")){e.currentImage=a(g[e.currentSlide])}else{e.currentImage=a(g[e.currentSlide]).find("img:first")}if(a(g[e.currentSlide]).is("a")){a(g[e.currentSlide]).css("display","block")}var h=a('<img class="nivo-main-image" src="#" />');h.attr("src",e.currentImage.attr("src")).show();f.append(h);a(window).resize(function(){f.children("img").width(f.width());h.attr("src",e.currentImage.attr("src"));h.stop().height("auto");a(".nivo-slice").remove();a(".nivo-box").remove()});f.append(a('<div class="nivo-caption"></div>'));var i=function(b){var c=a(".nivo-caption",f);if(e.currentImage.attr("title")!=""&&e.currentImage.attr("title")!=undefined){var d=e.currentImage.attr("title");if(d.substr(0,1)=="#")d=a(d).html();if(c.css("display")=="block"){setTimeout(function(){c.html(d)},b.animSpeed)}else{c.html(d);c.stop().fadeIn(b.animSpeed)}}else{c.stop().fadeOut(b.animSpeed)}};i(d);var j=0;if(!d.manualAdvance&&g.length>1){j=setInterval(function(){o(f,g,d,false)},d.pauseTime)}if(d.directionNav){f.append('<div class="nivo-directionNav"><a class="nivo-prevNav">'+d.prevText+'</a><a class="nivo-nextNav">'+d.nextText+"</a></div>");a("a.nivo-prevNav",f).live("click",function(){if(e.running){return false}clearInterval(j);j="";e.currentSlide-=2;o(f,g,d,"prev")});a("a.nivo-nextNav",f).live("click",function(){if(e.running){return false}clearInterval(j);j="";o(f,g,d,"next")})}if(d.controlNav){e.controlNavEl=a('<div class="nivo-controlNav"></div>');f.after(e.controlNavEl);for(var k=0;k<g.length;k++){if(d.controlNavThumbs){e.controlNavEl.addClass("nivo-thumbs-enabled");var l=g.eq(k);if(!l.is("img")){l=l.find("img:first")}if(l.attr("data-thumb"))e.controlNavEl.append('<a class="nivo-control" rel="'+k+'"><img src="'+l.attr("data-thumb")+'" alt="" /></a>')}else{e.controlNavEl.append('<a class="nivo-control" rel="'+k+'">'+(k+1)+"</a>")}}a("a:eq("+e.currentSlide+")",e.controlNavEl).addClass("active");a("a",e.controlNavEl).bind("click",function(){if(e.running)return false;if(a(this).hasClass("active"))return false;clearInterval(j);j="";h.attr("src",e.currentImage.attr("src"));e.currentSlide=a(this).attr("rel")-1;o(f,g,d,"control")})}if(d.pauseOnHover){f.hover(function(){e.paused=true;clearInterval(j);j=""},function(){e.paused=false;if(j===""&&!d.manualAdvance){j=setInterval(function(){o(f,g,d,false)},d.pauseTime)}})}f.bind("nivo:animFinished",function(){h.attr("src",e.currentImage.attr("src"));e.running=false;a(g).each(function(){if(a(this).is("a")){a(this).css("display","none")}});if(a(g[e.currentSlide]).is("a")){a(g[e.currentSlide]).css("display","block")}if(j===""&&!e.paused&&!d.manualAdvance){j=setInterval(function(){o(f,g,d,false)},d.pauseTime)}d.afterChange.call(this)});var m=function(b,c,d){if(a(d.currentImage).parent().is("a"))a(d.currentImage).parent().css("display","block");a('img[src="'+d.currentImage.attr("src")+'"]',b).not(".nivo-main-image,.nivo-control img").width(b.width()).css("visibility","hidden").show();var e=a('img[src="'+d.currentImage.attr("src")+'"]',b).not(".nivo-main-image,.nivo-control img").parent().is("a")?a('img[src="'+d.currentImage.attr("src")+'"]',b).not(".nivo-main-image,.nivo-control img").parent().height():a('img[src="'+d.currentImage.attr("src")+'"]',b).not(".nivo-main-image,.nivo-control img").height();for(var f=0;f<c.slices;f++){var g=Math.round(b.width()/c.slices);if(f===c.slices-1){b.append(a('<div class="nivo-slice" name="'+f+'"><img src="'+d.currentImage.attr("src")+'" style="position:absolute; width:'+b.width()+"px; height:auto; display:block !important; top:0; left:-"+(g+f*g-g)+'px;" /></div>').css({left:g*f+"px",width:b.width()-g*f+"px",height:e+"px",opacity:"0",overflow:"hidden"}))}else{b.append(a('<div class="nivo-slice" name="'+f+'"><img src="'+d.currentImage.attr("src")+'" style="position:absolute; width:'+b.width()+"px; height:auto; display:block !important; top:0; left:-"+(g+f*g-g)+'px;" /></div>').css({left:g*f+"px",width:g+"px",height:e+"px",opacity:"0",overflow:"hidden"}))}}a(".nivo-slice",b).height(e);h.stop().animate({height:a(d.currentImage).height()},c.animSpeed)};var n=function(b,c,d){if(a(d.currentImage).parent().is("a"))a(d.currentImage).parent().css("display","block");a('img[src="'+d.currentImage.attr("src")+'"]',b).not(".nivo-main-image,.nivo-control img").width(b.width()).css("visibility","hidden").show();var e=Math.round(b.width()/c.boxCols),f=Math.round(a('img[src="'+d.currentImage.attr("src")+'"]',b).not(".nivo-main-image,.nivo-control img").height()/c.boxRows);for(var g=0;g<c.boxRows;g++){for(var i=0;i<c.boxCols;i++){if(i===c.boxCols-1){b.append(a('<div class="nivo-box" name="'+i+'" rel="'+g+'"><img src="'+d.currentImage.attr("src")+'" style="position:absolute; width:'+b.width()+"px; height:auto; display:block; top:-"+f*g+"px; left:-"+e*i+'px;" /></div>').css({opacity:0,left:e*i+"px",top:f*g+"px",width:b.width()-e*i+"px"}));a('.nivo-box[name="'+i+'"]',b).height(a('.nivo-box[name="'+i+'"] img',b).height()+"px")}else{b.append(a('<div class="nivo-box" name="'+i+'" rel="'+g+'"><img src="'+d.currentImage.attr("src")+'" style="position:absolute; width:'+b.width()+"px; height:auto; display:block; top:-"+f*g+"px; left:-"+e*i+'px;" /></div>').css({opacity:0,left:e*i+"px",top:f*g+"px",width:e+"px"}));a('.nivo-box[name="'+i+'"]',b).height(a('.nivo-box[name="'+i+'"] img',b).height()+"px")}}}h.stop().animate({height:a(d.currentImage).height()},c.animSpeed)};var o=function(b,c,d,e){var f=b.data("nivo:vars");if(f&&f.currentSlide===f.totalSlides-1){d.lastSlide.call(this)}if((!f||f.stop)&&!e){return false}d.beforeChange.call(this);if(!e){h.attr("src",f.currentImage.attr("src"))}else{if(e==="prev"){h.attr("src",f.currentImage.attr("src"))}if(e==="next"){h.attr("src",f.currentImage.attr("src"))}}f.currentSlide++;if(f.currentSlide===f.totalSlides){f.currentSlide=0;d.slideshowEnd.call(this)}if(f.currentSlide<0){f.currentSlide=f.totalSlides-1}if(a(c[f.currentSlide]).is("img")){f.currentImage=a(c[f.currentSlide])}else{f.currentImage=a(c[f.currentSlide]).find("img:first")}if(d.controlNav){a("a",f.controlNavEl).removeClass("active");a("a:eq("+f.currentSlide+")",f.controlNavEl).addClass("active")}i(d);a(".nivo-slice",b).remove();a(".nivo-box",b).remove();var g=d.effect,j="";if(d.effect==="random"){j=new Array("sliceDownRight","sliceDownLeft","sliceUpRight","sliceUpLeft","sliceUpDown","sliceUpDownLeft","fold","fade","boxRandom","boxRain","boxRainReverse","boxRainGrow","boxRainGrowReverse");g=j[Math.floor(Math.random()*(j.length+1))];if(g===undefined){g="fade"}}if(d.effect.indexOf(",")!==-1){j=d.effect.split(",");g=j[Math.floor(Math.random()*j.length)];if(g===undefined){g="fade"}}if(f.currentImage.attr("data-transition")){g=f.currentImage.attr("data-transition")}f.running=true;var k=0,l=0,o="",q="",r="",s="";if(g==="sliceDown"||g==="sliceDownRight"||g==="sliceDownLeft"){m(b,d,f);k=0;l=0;o=a(".nivo-slice",b);if(g==="sliceDownLeft"){o=a(".nivo-slice",b)._reverse()}o.each(function(){var c=a(this);c.css({top:"0px"});if(l===d.slices-1){setTimeout(function(){c.animate({opacity:"1.0"},d.animSpeed,"",function(){b.trigger("nivo:animFinished")})},100+k)}else{setTimeout(function(){c.animate({opacity:"1.0"},d.animSpeed)},100+k)}k+=50;l++})}else if(g==="sliceUp"||g==="sliceUpRight"||g==="sliceUpLeft"){m(b,d,f);k=0;l=0;o=a(".nivo-slice",b);if(g==="sliceUpLeft"){o=a(".nivo-slice",b)._reverse()}o.each(function(){var c=a(this);c.css({bottom:"0px"});if(l===d.slices-1){setTimeout(function(){c.animate({opacity:"1.0"},d.animSpeed,"",function(){b.trigger("nivo:animFinished")})},100+k)}else{setTimeout(function(){c.animate({opacity:"1.0"},d.animSpeed)},100+k)}k+=50;l++})}else if(g==="sliceUpDown"||g==="sliceUpDownRight"||g==="sliceUpDownLeft"){m(b,d,f);k=0;l=0;var t=0;o=a(".nivo-slice",b);if(g==="sliceUpDownLeft"){o=a(".nivo-slice",b)._reverse()}o.each(function(){var c=a(this);if(l===0){c.css("top","0px");l++}else{c.css("bottom","0px");l=0}if(t===d.slices-1){setTimeout(function(){c.animate({opacity:"1.0"},d.animSpeed,"",function(){b.trigger("nivo:animFinished")})},100+k)}else{setTimeout(function(){c.animate({opacity:"1.0"},d.animSpeed)},100+k)}k+=50;t++})}else if(g==="fold"){m(b,d,f);k=0;l=0;a(".nivo-slice",b).each(function(){var c=a(this);var e=c.width();c.css({top:"0px",width:"0px"});if(l===d.slices-1){setTimeout(function(){c.animate({width:e,opacity:"1.0"},d.animSpeed,"",function(){b.trigger("nivo:animFinished")})},100+k)}else{setTimeout(function(){c.animate({width:e,opacity:"1.0"},d.animSpeed)},100+k)}k+=50;l++})}else if(g==="fade"){m(b,d,f);q=a(".nivo-slice:first",b);q.css({width:b.width()+"px"});q.animate({opacity:"1.0"},d.animSpeed*2,"",function(){b.trigger("nivo:animFinished")})}else if(g==="slideInRight"){m(b,d,f);q=a(".nivo-slice:first",b);q.css({width:"0px",opacity:"1"});q.animate({width:b.width()+"px"},d.animSpeed*2,"",function(){b.trigger("nivo:animFinished")})}else if(g==="slideInLeft"){m(b,d,f);q=a(".nivo-slice:first",b);q.css({width:"0px",opacity:"1",left:"",right:"0px"});q.animate({width:b.width()+"px"},d.animSpeed*2,"",function(){q.css({left:"0px",right:""});b.trigger("nivo:animFinished")})}else if(g==="boxRandom"){n(b,d,f);r=d.boxCols*d.boxRows;l=0;k=0;s=p(a(".nivo-box",b));s.each(function(){var c=a(this);if(l===r-1){setTimeout(function(){c.animate({opacity:"1"},d.animSpeed,"",function(){b.trigger("nivo:animFinished")})},100+k)}else{setTimeout(function(){c.animate({opacity:"1"},d.animSpeed)},100+k)}k+=20;l++})}else if(g==="boxRain"||g==="boxRainReverse"||g==="boxRainGrow"||g==="boxRainGrowReverse"){n(b,d,f);r=d.boxCols*d.boxRows;l=0;k=0;var u=0;var v=0;var w=[];w[u]=[];s=a(".nivo-box",b);if(g==="boxRainReverse"||g==="boxRainGrowReverse"){s=a(".nivo-box",b)._reverse()}s.each(function(){w[u][v]=a(this);v++;if(v===d.boxCols){u++;v=0;w[u]=[]}});for(var x=0;x<d.boxCols*2;x++){var y=x;for(var z=0;z<d.boxRows;z++){if(y>=0&&y<d.boxCols){(function(c,e,f,h,i){var j=a(w[c][e]);var k=j.width();var l=j.height();if(g==="boxRainGrow"||g==="boxRainGrowReverse"){j.width(0).height(0)}if(h===i-1){setTimeout(function(){j.animate({opacity:"1",width:k,height:l},d.animSpeed/1.3,"",function(){b.trigger("nivo:animFinished")})},100+f)}else{setTimeout(function(){j.animate({opacity:"1",width:k,height:l},d.animSpeed/1.3)},100+f)}})(z,y,k,l,r);l++}y--}k+=100}}};var p=function(a){for(var b,c,d=a.length;d;b=parseInt(Math.random()*d,10),c=a[--d],a[d]=a[b],a[b]=c);return a};var q=function(a){if(this.console&&typeof console.log!=="undefined"){console.log(a)}};this.stop=function(){if(!a(b).data("nivo:vars").stop){a(b).data("nivo:vars").stop=true;q("Stop Slider")}};this.start=function(){if(a(b).data("nivo:vars").stop){a(b).data("nivo:vars").stop=false;q("Start Slider")}};d.afterLoad.call(this);return this};a.fn.nivoSlider=function(c){return this.each(function(d,e){var f=a(this);if(f.data("nivoslider")){return f.data("nivoslider")}var g=new b(this,c);f.data("nivoslider",g)})};a.fn.nivoSlider.defaults={effect:"random",slices:15,boxCols:8,boxRows:4,animSpeed:500,pauseTime:3e3,startSlide:0,directionNav:true,controlNav:true,controlNavThumbs:false,pauseOnHover:true,manualAdvance:false,prevText:"Prev",nextText:"Next",randomStart:false,beforeChange:function(){},afterChange:function(){},slideshowEnd:function(){},lastSlide:function(){},afterLoad:function(){}};a.fn._reverse=[].reverse})(jQuery);
(function($){var j=function(a,b){this.options={delay:500,animIn:'fadeIn',animOut:'fadeOut',animSpeed:'normal',duration:450,wrap:null,direction:'ltr',event:'mouseenter',touch:(('ontouchstart'in window)||(navigator.MaxTouchPoints>0)||(navigator.msMaxTouchPoints>0)),offset:0};this.init(a,b)};j.prototype.init=function(c,d){var f=this;jQuery.extend(f.options,d);if(!c.length)return;switch(f.options.animSpeed){case'fast':f.options.duration=250;break;case'slow':f.options.duration=650;break}c.addClass(f.options.animSpeed);var g=c.find('li.dj-up');f.kids=[];if(!f.options.wrap)f.options.wrap=c;else f.options.wrap=$('#'+f.options.wrap);if(f.options.touch)c.on('touchstart',function(e){e.stopPropagation()});g.each(function(a){var b=$(this);f.kids[a]=new k(b,0,f,f.options)});if(f.options.fixed==1&&!f.options.touch){$(window).load(f.makeSticky.bind(f,c))}};j.prototype.makeSticky=function(a){var b=this;b.sticky=false;var c=$('<div id="'+a.attr('id')+'sticky"></div>');c.addClass('dj-megamenu').addClass('dj-megamenu-'+b.options.theme).addClass('dj-megamenu-sticky');c.css({position:'fixed',top:parseInt(b.options.offset),left:0,width:'100%',display:'none'});c.insertAfter(a);var d=$('#'+a.attr('id')+'stickylogo');if(d.length){c.append(d);d.css('display','block')}var e=a.offset().top-parseInt(b.options.offset);var f=a.clone();f.attr('id',a.attr('id')+'placeholder');f.css({display:'none',opacity:0});f.insertBefore(a);var g=b.options.direction=='rtl'?'right':'left';$(window).scroll(b.scroll.bind(b,c,a,f,e,g,false));$(window).resize(b.scroll.bind(b,c,a,f,e,g,true))};j.prototype.scroll=function(a,b,c,d,e,f){var g=this;if($(window).scrollTop()>d){if(!g.sticky){var h=b.offset();var i=e=='left'?h.left:$(window).width()-h.left-b.outerWidth();b.css(e,i);c.css('display','');a.css('display','');a.append(b);g.sticky=true}else if(f){var h=c.offset();var i=e=='left'?h.left:$(window).width()-h.left-b.outerWidth();b.css(e,i)}}else if(g.sticky){a.css('display','none');c.css('display','none');b.insertAfter(c);b.css(e,'');g.sticky=false}};var k=function(a,b,c,d){this.options={};this.init(a,b,c,d)};k.prototype.init=function(a,b,c,d){var f=this;jQuery.extend(f.options,d);f.menu=a;f.level=b;f.parent=c;f.timer=null;f.sub=f.menu.find('> .dj-subwrap').first();var g='mouseenter';if(f.options.touch||f.options.event=='click_all'){g=f.options.touch?g:'click';var h=f.menu.find('> a').first();if(h.length){if(f.menu.hasClass('separator'))h.css('cursor','pointer');h.on('touchend click',function(e){if(f.sub.length&&!f.menu.hasClass('hover')){e.preventDefault();if(e.type=='touchend')f.menu.trigger('click')}})}}else if(f.options.event=='click'&&f.menu.hasClass('separator')){var h=f.menu.find('> a').first();if(h.length)h.css('cursor','pointer');g='click'}if(f.options.touch){f.menu.on('click',f.showSub.bind(f));$(document).on('touchstart',function(){if(f.menu.hasClass('hover'))f.menu.trigger('mouseleave')})}f.menu.on(g,f.showSub.bind(f));f.menu.on('mouseleave',f.hideSub.bind(f));if(f.sub.length){f.kids=[];f.initKids()}};k.prototype.showSub=function(){var a=this;clearTimeout(a.timer);if(a.menu.hasClass('hover')&&!a.sub.hasClass(a.options.animOut)){return}clearTimeout(a.animTimer);a.menu.addClass('hover');a.hideOther();if(a.sub.length){a.sub.removeClass(a.options.animOut);a.checkDir();a.sub.addClass(a.options.animIn)}};k.prototype.hideSub=function(){var a=this;if(a.sub.length){a.timer=setTimeout(function(){a.sub.removeClass(a.options.animIn);a.sub.addClass(a.options.animOut);a.animTimer=setTimeout(function(){a.menu.removeClass('hover')},a.options.duration)},a.options.delay)}else{a.menu.removeClass('hover')}};k.prototype.checkDir=function(){var a=this;a.DirDone=true;var b=a.sub.offset();var c=a.options.wrap.offset();if(a.options.wrap.hasClass('dj-megamenu')){var d=$('#'+a.options.wrap.get('id')+'placeholder');if(d.length)c=d.offset()}a.sub.css('left','');a.sub.css('right','');a.sub.css('margin-left','');a.sub.css('margin-right','');if(a.options.direction=='ltr'){var e=b.left+a.sub.outerWidth()-a.options.wrap.outerWidth()-c.left;if(e>0||a.sub.hasClass('open-left')){if(a.level){a.sub.css('right',a.menu.outerWidth());a.sub.css('left','auto')}else{if(a.sub.hasClass('open-left')){a.sub.css('right',a.menu.css('left'));a.sub.css('left','auto')}else{a.sub.css('margin-left',-e)}}}}else if(a.options.direction=='rtl'){var e=b.left-c.left;if(e<0||a.sub.hasClass('open-right')){if(a.level){a.sub.css('left',a.menu.outerWidth());a.sub.css('right','auto')}else{if(a.sub.hasClass('open-right')){a.sub.css('left',a.menu.css('right'));a.sub.css('right','auto')}else{a.sub.css('margin-right',e)}}}}};k.prototype.initKids=function(){var c=this;var d=c.sub.find('> .dj-subwrap-in > .dj-subcol > ul.dj-submenu > li');d.each(function(a){var b=$(this);c.kids[a]=new k(b,c.level+1,c,c.options)})};k.prototype.hideOther=function(){var c=this;$.each(c.parent.kids,function(a,b){if(b.menu.hasClass('hover')&&b!=c){if(b.sub.length){b.hideOtherSub();b.sub.removeClass(b.options.animIn);b.sub.addClass(b.options.animOut);b.animTimer=setTimeout(function(){b.menu.removeClass('hover')},c.options.duration)}else{b.menu.removeClass('hover')}}})};k.prototype.hideOtherSub=function(){var c=this;$.each(c.kids,function(a,b){if(b.sub.length){b.hideOtherSub();b.sub.removeClass(b.options.animIn);b.sub.removeClass(b.options.animOut)}b.menu.removeClass('hover')})};$(document).ready(function(){$('.dj-megamenu[data-options]').each(function(){var a=$(this);a.find('.dj-hideitem').remove();a.data();var b=a.data('options');a.removeAttr('data-options');new j(a,b)})})})(jQuery);;
(function($){var l=function(a,b){var c=$('<select id="'+a.attr('id')+'select" class="inputbox dj-select" />').on('change',function(){if($(this).val)window.location=$(this).val()});var d=a.find('li.dj-up');m(d,c,0);c.appendTo(b)};var m=function(g,h,j){var k='',active=false;for(var i=0;i<j;i++){k+='- '}g.each(function(){var a=$(this);var b=a.find('> a').first();var c=a.find('> .dj-subwrap > .dj-subwrap-in > .dj-subcol > .dj-submenu > li, > .dj-subtree > li');if(b.length){var d='';var e=b.find('img').first();if(e.length){d=k+e.attr('alt')}else{d=b.html().replace(/(<small[^<]+<\/small>)/ig,"");d=k+d.replace(/(<([^>]+)>)/ig,"")}var f=$('<option value="'+b.prop('href')+'">'+d+'</option>').appendTo(h);if(!b.prop('href')){f.prop('disabled',true)}if(a.hasClass('active')){h.val(f.val());active=true}}if(c)m(c,h,j+1)});if(!j&&!active){$('<option value="">- MENU -</option>').prependTo(h);h.val('')}};var n=function(c){c.find('ul.dj-mobile-nav > li, ul.dj-mobile-nav-child > li').each(function(){var a=$(this);if(a.hasClass('parent')){var b=a.find('> a').first();if(b.length){b.append('<span class="toggler"></span>');b.on('click',function(e){if(!a.hasClass('active'))e.preventDefault();else if($(e.target).hasClass('toggler')){e.preventDefault();e.stopPropagation();a.removeClass('active')}})}}a.on('click',function(){a.siblings().removeClass('active');a.addClass('active')})})};var o=function(a){var b=$(document.body).children();var c=$('<div class="dj-offcanvas-wrapper" />');var d=$('<div class="dj-offcanvas-pusher" />');var f=$('<div class="dj-offcanvas-pusher-in" />');var g=a.find('.dj-offcanvas').first();$(document.body).addClass('dj-offcanvas-effect-'+g.data('effect'));a.find('.dj-mobile-open-btn').on('click',function(e){e.stopPropagation();g.data('scroll',$(window).scrollTop());$(document.body).addClass('dj-offcanvas-open');f.css('margin-top',-g.data('scroll'))});$(document.body).prepend(c);c.append(g);c.append(d);d.append(f);f.append(b);$('.dj-offcanvas-pusher, .dj-offcanvas-close-btn').on('click',function(){if($(document.body).hasClass('dj-offcanvas-open')){f.css('margin-top',0);$(document.body).removeClass('dj-offcanvas-open');$(window).scrollTop(g.data('scroll'))}});n(g)};var p=function(a){a.find('.dj-mobile-open-btn').on('click',function(e){a.find('.dj-accordion-in').slideToggle('fast')});n(a)};var q=null;$(window).resize(function(){window.clearTimeout(q);q=window.setTimeout(function(){var c=$('body').css('overflow');if(c=='visible')c='';$('body').css('overflow','hidden');var d=$(window).innerWidth();$('body').css('overflow',c);var e=false;$('.dj-megamenu').each(function(){var a=$(this);var b=$('#'+a.prop('id')+'mobile');if(b.length){if(d<=a.data('trigger')){e=true;$(document.body).addClass(a.prop('id')+'-mobile')}else{$(document.body).removeClass(a.prop('id')+'-mobile')}}});if(e){$(document.body).addClass('dj-megamenu-mobile')}else{$(document.body).removeClass('dj-megamenu-mobile')}},100)});$(document).ready(function(){$('.dj-megamenu').each(function(){var a=$(this);var b=$('#'+a.prop('id')+'mobile');var c=$('#'+a.prop('id')+'mobileWrap');if(c.length){c.append(b)}if(b.length){b.find('.dj-hideitem').remove();if(b.hasClass('dj-megamenu-offcanvas')){o(b)}else if(b.hasClass('dj-megamenu-accordion')){p(b)}}});$(window).trigger('resize')});$(window).load(function(){$('.dj-megamenu').each(function(){var a=$(this);var b=$('#'+a.prop('id')+'mobile');if(b.length){if(b.hasClass('dj-megamenu-select')){l(a,b)}}})})})(jQuery);;