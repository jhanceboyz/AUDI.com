/* EF4 JSMin */
!(function($){window.addEvent('load',function(){var hash=window.location.hash.substr(1);var fb=hash.indexOf('fb_comment_id');if(fb>-1){hash=hash.substring(0,fb-1).replace(/%3A/g,':');}
if(hash){var link=$(document.body).getElement('a.djmodal[href$="'+hash+'"]');if(link){link.fireEvent('click');}else{var pos=hash.lastIndexOf('&id=');if(pos<0)pos=hash.lastIndexOf('/');link=$(document.body).getElement('a.djmodal[href*="'+hash.substr(0,pos)+'"]');if(link){var url=link.getProperty('href');var pos2=url.lastIndexOf('&id=');if(pos2<0)pos2=url.lastIndexOf('/');link.setProperty('href',url.substr(0,pos2)+hash.substr(pos));link.fireEvent('click');link.setProperty('href',url);}}}});})(document.id);;
this.DJImageGalleryGrid=new Class({Implements:Options,options:{transition:Fx.Transitions.Expo.easeInOut,duration:250,delay:50},initialize:function(a,b){if(!(this.grid=document.id(a)))return;this.setOptions(b);this.slides=this.grid.getElements('.dj-slide');this.loaded=0;this.touch=(Browser.Platform.ios||Browser.Platform.android||Browser.Platform.webos);this.transition=this.support('transition');this.transform=this.options.effect=='ifade'?this.support('transform'):false;if(this.slides.length){this.responsive();this.setEffectsOptions();this.setSlidesEffects();this.loadSlides();this.setGridEvents();window.addEvent('resize',this.responsive.bind(this))}},responsive:function(){var a=this.getSize(this.grid).x;a-=this.grid.getStyle('padding-left').toInt();a-=this.grid.getStyle('padding-right').toInt();a-=this.grid.getStyle('border-left-width').toInt();a-=this.grid.getStyle('border-right-width').toInt();var b=Math.ceil(a/(this.options.width+this.options.spacing));var c=Math.floor((a-1)/b-this.options.spacing);this.slides.setStyle('width',c);this.slides.setStyle('height',(this.options.height*c/this.options.width)-1)},getSize:function(a){return a.measure(function(){return this.getSize()})},setEffectsOptions:function(){switch(this.options.effect){case'up':var a=Math.ceil(this.options.spacing*100/this.options.height);this.property="top";this.startEffect=(100+a)+'%';this.endEffect='0';break;case'down':var a=Math.ceil(this.options.spacing*100/this.options.height);this.property="top";this.startEffect=-1*(100+a)+'%';this.endEffect='0';break;case'left':var a=Math.ceil(this.options.spacing*100/this.options.width);this.property="left";this.startEffect=(100+a)+'%';this.endEffect='0';break;case'right':var a=Math.ceil(this.options.spacing*100/this.options.width);this.property="left";this.startEffect=-1*(100+a)+'%';this.endEffect='0';break;case'fade':default:this.property="opacity";this.startEffect=0;this.endEffect=1;break}if(this.options.desc_effect){switch(this.options.desc_effect){case'up':var a=Math.ceil(this.options.spacing*100/this.options.height);this.desc_property="margin-bottom";this.desc_startEffect=(100+a)+'%';this.desc_endEffect=0;break;case'down':var a=Math.ceil(this.options.spacing*100/this.options.height);this.desc_property="margin-bottom";this.desc_startEffect=-1*(100+a)+'%';this.desc_endEffect=0;break;case'left':var a=Math.ceil(this.options.spacing*100/this.options.width);this.desc_property="margin-left";this.desc_startEffect=-1*(100+a)+'%';this.desc_endEffect=0;break;case'right':var a=Math.ceil(this.options.spacing*100/this.options.width);this.desc_property="margin-left";this.desc_startEffect=(100+a)+'%';this.desc_endEffect=0;break;case'fade':default:this.desc_property="opacity";this.desc_startEffect=0;this.desc_endEffect=1;break}}},setSlidesEffects:function(){this.slides.each(function(b){b.fx=b.getElement('.dj-slide-in');if(this.transition){b.fx.setStyle(this.property,this.startEffect);var c=this.property+' '+this.options.duration+'ms '+'ease-out';if(this.transform){c+=', '+this.transform+' '+this.options.duration+'ms '+'ease-out';b.fx.setStyle(this.transform,'scale(0.3)')}b.fx.setStyle(this.transition,c);c='opacity '+this.options.duration+'ms '+'ease-out '+this.options.delay+'ms';if(this.transform)c+=', '+this.transform+' '+this.options.duration+'ms '+'ease-out '+this.options.delay+'ms';b.setStyle(this.transition,c)}else{b.set('tween',{property:'opacity',link:'cancel',transition:this.options.transition,duration:this.options.duration});b.fx.set('tween',{property:this.property,link:'cancel',transition:this.options.transition,duration:this.options.duration});b.fx.get('tween').set(this.startEffect)}b.desc=b.getElement('.dj-slide-desc');if(this.options.desc_effect&&b.desc){if(this.transition){b.desc.setStyle(this.desc_property,this.desc_startEffect);b.desc.setStyle(this.transition,this.desc_property+' '+this.options.duration+'ms '+'ease-in-out '+this.options.delay+'ms')}else{if(this.options.desc_effect=='fade')b.desc.set('tween',{property:this.desc_property,link:'cancel',transition:Fx.Transitions.Expo.easeInOut,duration:this.options.duration});else b.desc.set('tween',{property:this.desc_property,link:'cancel',transition:Fx.Transitions.Expo.easeInOut,duration:this.options.duration,unit:'%'});b.desc.get('tween').set(this.desc_startEffect)}}if(this.touch){var d=b.fx.getElement('img.dj-image');d.addEvent('click',function(e){if(this.options.desc_effect&&b.desc&&!b.hasClass('active')){this.slides.each(function(a){if(a.hasClass('active')&&a!=b)this.hideItem(a)}.bind(this));this.showItem(b);e.preventDefault();e.stopPropagation();this.grid.fireEvent('mouseenter')}}.bind(this))}else{b.addEvent('mouseenter',this.showItem.bind(this,b));b.addEvent('mouseleave',this.hideItem.bind(this,b))}}.bind(this))},showItem:function(a){a.addClass('active');if(this.transition){a.setStyle('opacity',1);if(this.transform)a.setStyle(this.transform,'scale(1.1)')}else a.tween(1);if(this.options.desc_effect&&a.desc){if(this.transition)a.desc.setStyle(this.desc_property,this.desc_endEffect);else a.desc.get('tween').start(this.desc_endEffect)}},hideItem:function(a){a.removeClass('active');if(this.transition){a.setStyle('opacity',0.3);if(this.transform)a.setStyle(this.transform,'scale(1.0)')}else a.tween(0.3);if(this.options.desc_effect&&a.desc){if(this.transition)a.desc.setStyle(this.desc_property,this.desc_startEffect);else a.desc.get('tween').start(this.desc_startEffect)}},loadSlide:function(c,e){if(this.slides[c].loaded)return;this.slides[c].loaded=true;this.loaded++;var f=this.slides[c].getElement('img.dj-image');var g=0;if(e)g=c*this.options.delay;var h=function(b,i,d){(function(s,a){s.setStyle('background-image','none');if(this.property!='opacity')s.fx.setStyle('opacity',1);if(this.transition){s.fx.setStyle(this.property,this.endEffect);if(this.transform)s.fx.setStyle(this.transform,'scale(1.0)')}else{a.set('tween',{property:'max-width',link:'cancel',transition:this.options.transition,duration:this.options.duration,unit:'%'});a.get('tween').set(30);a.tween(100);s.fx.tween(this.endEffect)}}).delay(d,this,this.slides[i],b);b.removeEvent('load',h)}.bind(this,f,c,g);f.addEvent('load',h);var j=f.getProperty('data-sizes'),srcset=f.getProperty('data-srcset'),src=f.getProperty('data-src');if(j){f.setProperty('sizes',j);f.removeProperty('data-sizes')}if(srcset){f.setProperty('srcset',srcset);f.removeProperty('data-srcset')}if(src){f.setProperty('src',src);f.removeProperty('data-src')}picturefill({elements:[f]})},loadSlides:function(){var d=window.getScroll().y+window.getSize().y;this.slides.each(function(a,b){if(a.getPosition().y<d){this.loadSlide(b,true)}}.bind(this));var e=function(){var c=window.getScroll().y+window.getSize().y;this.slides.each(function(a,b){if(a.getPosition().y<c){this.loadSlide(b,false)}}.bind(this));if(this.loaded==this.slides.length){window.removeEvent('scroll',e);window.removeEvent('resize',e)}}.bind(this);window.addEvent('scroll',e);window.addEvent('resize',e);window.addEvent('load',e)},setGridEvents:function(){this.elementsToShow=this.grid.getElements('.showOnMouseOver');this.elementsToShow.each(function(a){a.set('tween',{property:'opacity',duration:200,link:'cancel'});a.get('tween').set(0);a.addEvent('mouseenter',function(){this.tween(1)}.bind(a));a.addEvent('mouseleave',function(){this.tween(0.5)}.bind(a))}.bind(this));this.grid.addEvent('mouseenter',function(){this.slides.each(function(a,b){if(!a.hasClass('active')){if(this.transition)a.setStyle('opacity',0.3);else a.tween(0.3)}}.bind(this));this.elementsToShow.each(function(a){a.tween(0.5)}.bind(this))}.bind(this));this.grid.addEvent('mouseleave',function(){if(this.transition)this.slides.setStyle('opacity',1);else this.slides.tween(1);this.elementsToShow.each(function(a){a.tween(0)}.bind(this))}.bind(this))},support:function(p){var b=document.body||document.documentElement,s=b.style;if(typeof s=='undefined')return false;if(typeof s[p]=='string')return p;v=['Moz','Webkit','Khtml','O','ms','Icab'],pu=p.charAt(0).toUpperCase()+p.substr(1);for(var i=0;i<v.length;i++){if(typeof s[v[i]+pu]=='string')return('-'+v[i].toLowerCase()+'-'+p)}}});;
(function($){var j=function(a,b){this.options={delay:500,animIn:'fadeIn',animOut:'fadeOut',animSpeed:'normal',duration:450,wrap:null,direction:'ltr',event:'mouseenter',touch:(('ontouchstart'in window)||(navigator.MaxTouchPoints>0)||(navigator.msMaxTouchPoints>0)),offset:0};this.init(a,b)};j.prototype.init=function(c,d){var f=this;jQuery.extend(f.options,d);if(!c.length)return;switch(f.options.animSpeed){case'fast':f.options.duration=250;break;case'slow':f.options.duration=650;break}c.addClass(f.options.animSpeed);var g=c.find('li.dj-up');f.kids=[];if(!f.options.wrap)f.options.wrap=c;else f.options.wrap=$('#'+f.options.wrap);if(f.options.touch)c.on('touchstart',function(e){e.stopPropagation()});g.each(function(a){var b=$(this);f.kids[a]=new k(b,0,f,f.options)});if(f.options.fixed==1&&!f.options.touch){$(window).load(f.makeSticky.bind(f,c))}};j.prototype.makeSticky=function(a){var b=this;b.sticky=false;var c=$('<div id="'+a.attr('id')+'sticky"></div>');c.addClass('dj-megamenu').addClass('dj-megamenu-'+b.options.theme).addClass('dj-megamenu-sticky');c.css({position:'fixed',top:parseInt(b.options.offset),left:0,width:'100%',display:'none'});c.insertAfter(a);var d=$('#'+a.attr('id')+'stickylogo');if(d.length){c.append(d);d.css('display','block')}var e=a.offset().top-parseInt(b.options.offset);var f=a.clone();f.attr('id',a.attr('id')+'placeholder');f.css({display:'none',opacity:0});f.insertBefore(a);var g=b.options.direction=='rtl'?'right':'left';$(window).scroll(b.scroll.bind(b,c,a,f,e,g,false));$(window).resize(b.scroll.bind(b,c,a,f,e,g,true))};j.prototype.scroll=function(a,b,c,d,e,f){var g=this;if($(window).scrollTop()>d){if(!g.sticky){var h=b.offset();var i=e=='left'?h.left:$(window).width()-h.left-b.outerWidth();b.css(e,i);c.css('display','');a.css('display','');a.append(b);g.sticky=true}else if(f){var h=c.offset();var i=e=='left'?h.left:$(window).width()-h.left-b.outerWidth();b.css(e,i)}}else if(g.sticky){a.css('display','none');c.css('display','none');b.insertAfter(c);b.css(e,'');g.sticky=false}};var k=function(a,b,c,d){this.options={};this.init(a,b,c,d)};k.prototype.init=function(a,b,c,d){var f=this;jQuery.extend(f.options,d);f.menu=a;f.level=b;f.parent=c;f.timer=null;f.sub=f.menu.find('> .dj-subwrap').first();var g='mouseenter';if(f.options.touch||f.options.event=='click_all'){g=f.options.touch?g:'click';var h=f.menu.find('> a').first();if(h.length){if(f.menu.hasClass('separator'))h.css('cursor','pointer');h.on('touchend click',function(e){if(f.sub.length&&!f.menu.hasClass('hover')){e.preventDefault();if(e.type=='touchend')f.menu.trigger('click')}})}}else if(f.options.event=='click'&&f.menu.hasClass('separator')){var h=f.menu.find('> a').first();if(h.length)h.css('cursor','pointer');g='click'}if(f.options.touch){f.menu.on('click',f.showSub.bind(f));$(document).on('touchstart',function(){if(f.menu.hasClass('hover'))f.menu.trigger('mouseleave')})}f.menu.on(g,f.showSub.bind(f));f.menu.on('mouseleave',f.hideSub.bind(f));if(f.sub.length){f.kids=[];f.initKids()}};k.prototype.showSub=function(){var a=this;clearTimeout(a.timer);if(a.menu.hasClass('hover')&&!a.sub.hasClass(a.options.animOut)){return}clearTimeout(a.animTimer);a.menu.addClass('hover');a.hideOther();if(a.sub.length){a.sub.removeClass(a.options.animOut);a.checkDir();a.sub.addClass(a.options.animIn)}};k.prototype.hideSub=function(){var a=this;if(a.sub.length){a.timer=setTimeout(function(){a.sub.removeClass(a.options.animIn);a.sub.addClass(a.options.animOut);a.animTimer=setTimeout(function(){a.menu.removeClass('hover')},a.options.duration)},a.options.delay)}else{a.menu.removeClass('hover')}};k.prototype.checkDir=function(){var a=this;a.DirDone=true;var b=a.sub.offset();var c=a.options.wrap.offset();if(a.options.wrap.hasClass('dj-megamenu')){var d=$('#'+a.options.wrap.get('id')+'placeholder');if(d.length)c=d.offset()}a.sub.css('left','');a.sub.css('right','');a.sub.css('margin-left','');a.sub.css('margin-right','');if(a.options.direction=='ltr'){var e=b.left+a.sub.outerWidth()-a.options.wrap.outerWidth()-c.left;if(e>0||a.sub.hasClass('open-left')){if(a.level){a.sub.css('right',a.menu.outerWidth());a.sub.css('left','auto')}else{if(a.sub.hasClass('open-left')){a.sub.css('right',a.menu.css('left'));a.sub.css('left','auto')}else{a.sub.css('margin-left',-e)}}}}else if(a.options.direction=='rtl'){var e=b.left-c.left;if(e<0||a.sub.hasClass('open-right')){if(a.level){a.sub.css('left',a.menu.outerWidth());a.sub.css('right','auto')}else{if(a.sub.hasClass('open-right')){a.sub.css('left',a.menu.css('right'));a.sub.css('right','auto')}else{a.sub.css('margin-right',e)}}}}};k.prototype.initKids=function(){var c=this;var d=c.sub.find('> .dj-subwrap-in > .dj-subcol > ul.dj-submenu > li');d.each(function(a){var b=$(this);c.kids[a]=new k(b,c.level+1,c,c.options)})};k.prototype.hideOther=function(){var c=this;$.each(c.parent.kids,function(a,b){if(b.menu.hasClass('hover')&&b!=c){if(b.sub.length){b.hideOtherSub();b.sub.removeClass(b.options.animIn);b.sub.addClass(b.options.animOut);b.animTimer=setTimeout(function(){b.menu.removeClass('hover')},c.options.duration)}else{b.menu.removeClass('hover')}}})};k.prototype.hideOtherSub=function(){var c=this;$.each(c.kids,function(a,b){if(b.sub.length){b.hideOtherSub();b.sub.removeClass(b.options.animIn);b.sub.removeClass(b.options.animOut)}b.menu.removeClass('hover')})};$(document).ready(function(){$('.dj-megamenu[data-options]').each(function(){var a=$(this);a.find('.dj-hideitem').remove();a.data();var b=a.data('options');a.removeAttr('data-options');new j(a,b)})})})(jQuery);;
(function($){var l=function(a,b){var c=$('<select id="'+a.attr('id')+'select" class="inputbox dj-select" />').on('change',function(){if($(this).val)window.location=$(this).val()});var d=a.find('li.dj-up');m(d,c,0);c.appendTo(b)};var m=function(g,h,j){var k='',active=false;for(var i=0;i<j;i++){k+='- '}g.each(function(){var a=$(this);var b=a.find('> a').first();var c=a.find('> .dj-subwrap > .dj-subwrap-in > .dj-subcol > .dj-submenu > li, > .dj-subtree > li');if(b.length){var d='';var e=b.find('img').first();if(e.length){d=k+e.attr('alt')}else{d=b.html().replace(/(<small[^<]+<\/small>)/ig,"");d=k+d.replace(/(<([^>]+)>)/ig,"")}var f=$('<option value="'+b.prop('href')+'">'+d+'</option>').appendTo(h);if(!b.prop('href')){f.prop('disabled',true)}if(a.hasClass('active')){h.val(f.val());active=true}}if(c)m(c,h,j+1)});if(!j&&!active){$('<option value="">- MENU -</option>').prependTo(h);h.val('')}};var n=function(c){c.find('ul.dj-mobile-nav > li, ul.dj-mobile-nav-child > li').each(function(){var a=$(this);if(a.hasClass('parent')){var b=a.find('> a').first();if(b.length){b.append('<span class="toggler"></span>');b.on('click',function(e){if(!a.hasClass('active'))e.preventDefault();else if($(e.target).hasClass('toggler')){e.preventDefault();e.stopPropagation();a.removeClass('active')}})}}a.on('click',function(){a.siblings().removeClass('active');a.addClass('active')})})};var o=function(a){var b=$(document.body).children();var c=$('<div class="dj-offcanvas-wrapper" />');var d=$('<div class="dj-offcanvas-pusher" />');var f=$('<div class="dj-offcanvas-pusher-in" />');var g=a.find('.dj-offcanvas').first();$(document.body).addClass('dj-offcanvas-effect-'+g.data('effect'));a.find('.dj-mobile-open-btn').on('click',function(e){e.stopPropagation();g.data('scroll',$(window).scrollTop());$(document.body).addClass('dj-offcanvas-open');f.css('margin-top',-g.data('scroll'))});$(document.body).prepend(c);c.append(g);c.append(d);d.append(f);f.append(b);$('.dj-offcanvas-pusher, .dj-offcanvas-close-btn').on('click',function(){if($(document.body).hasClass('dj-offcanvas-open')){f.css('margin-top',0);$(document.body).removeClass('dj-offcanvas-open');$(window).scrollTop(g.data('scroll'))}});n(g)};var p=function(a){a.find('.dj-mobile-open-btn').on('click',function(e){a.find('.dj-accordion-in').slideToggle('fast')});n(a)};var q=null;$(window).resize(function(){window.clearTimeout(q);q=window.setTimeout(function(){var c=$('body').css('overflow');if(c=='visible')c='';$('body').css('overflow','hidden');var d=$(window).innerWidth();$('body').css('overflow',c);var e=false;$('.dj-megamenu').each(function(){var a=$(this);var b=$('#'+a.prop('id')+'mobile');if(b.length){if(d<=a.data('trigger')){e=true;$(document.body).addClass(a.prop('id')+'-mobile')}else{$(document.body).removeClass(a.prop('id')+'-mobile')}}});if(e){$(document.body).addClass('dj-megamenu-mobile')}else{$(document.body).removeClass('dj-megamenu-mobile')}},100)});$(document).ready(function(){$('.dj-megamenu').each(function(){var a=$(this);var b=$('#'+a.prop('id')+'mobile');var c=$('#'+a.prop('id')+'mobileWrap');if(c.length){c.append(b)}if(b.length){b.find('.dj-hideitem').remove();if(b.hasClass('dj-megamenu-offcanvas')){o(b)}else if(b.hasClass('dj-megamenu-accordion')){p(b)}}});$(window).trigger('resize')});$(window).load(function(){$('.dj-megamenu').each(function(){var a=$(this);var b=$('#'+a.prop('id')+'mobile');if(b.length){if(b.hasClass('dj-megamenu-select')){l(a,b)}}})})})(jQuery);;