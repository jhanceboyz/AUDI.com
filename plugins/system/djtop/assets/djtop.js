
(function($){

var CountDown = new Class({
	Implements: [Options, Events],
	initialize: function (options) {

		this.setOptions(options);
		if(!this.options.date instanceof Date) this.options.date = new Date(this.options.date);
		
		this.timer = new PeriodicalExecuter(this.update.bind(this), (this.options.frequency || 1000) / 1000);
	},
	stop: function () {
	
		this.timer.stop();			
		return this
	},
	start: function () {
	
		this.timer.registerCallback();			 
		return this
	},
	update: function () {
	
		var millis = Math.max(0, this.options.date.getTime() - new Date().getTime()),
			time = Math.floor(millis / 1000),
			stop = time == 0,
			countdown = {
		
				days: Math.floor(time / (60 * 60 * 24)), 
				time: time,
				millis: millis
			};
		
		time %= (60 * 60 * 24);
		
		countdown.hours = Math.floor(time / (60 * 60));
		time %= (60 * 60);
		countdown.minutes = Math.floor(time / 60);
		countdown.second = time % 60;
		
		this.fireEvent('onChange', countdown);
		
		if(stop) {
		
			this.timer.stop();
			this.fireEvent('onComplete');
		}
	}
});
													
var PeriodicalExecuter = new Class({
		// name: 'PeriodicalExecuter',
		initialize: function(callback, frequency) {		
			this.callback = callback;
			this.frequency = frequency;
			this.currentlyExecuting = false;
			this.registerCallback()
		},
		registerCallback: function() {		
			this.stop();
			this.timer = setInterval(this.onTimerEvent.bind(this), this.frequency * 1000);
			return this
		},
		execute: function() {		
			this.callback(this);
			return this
		},
		stop: function() {		
			if (!this.timer) return this;
			clearInterval(this.timer);
			this.timer = null;
			return this
		},
		onTimerEvent: function() {		
			if (!this.currentlyExecuting) {			
				try {				
					this.currentlyExecuting = true;
					this.execute();
				} finally {				
					this.currentlyExecuting = false;
				}
			}				
			return this
		}
	});
	
window.addEvent('domready',function(){
	
	if(Cookie.read('djtop-hide') == 1) {
		$(document.body).addClass('djext-hide');
	}
	
	var div = $('djcounter');
	if(div) {
		var time_left = div.getProperty('data-time');
		var countdown = new CountDown({
			//initialized 30s from now
			date: new Date(new Date().getTime() + time_left*1000),
			//update every 100ms
			frequency: 100,
			//update the div#counter
			onChange: function(counter) {
				var text = '<span class="reset_text">Drive reset in</span> <span class="reset_time">';
				if(counter.days > 0) text = counter.days + ' d ';
				if(counter.hours > 0) text += (counter.hours > 10 ? '' : '0') + counter.hours + ':';
				text += (counter.minutes > 9 ? '' : '0') + counter.minutes + ':';
				text += (counter.second > 9 ? '' : '0') + counter.second + '</span>';
			   // text += ' - ' + (counter.millis > 10 ? '' : '0') + counter.millis + ':';
				div.set('html', text)
				//div.innerHTML=text;
			},
			//complete
				onComplete: function () {
				div.set('text', 'Restart.')
				}
		});
	}
	
	var bar = $('djext-top');
	if(bar && !inIframe()) {
		var button = bar.getElement('.djext-toggle');
		button.addEvent('click', function(){
			$(document.body).toggleClass('djext-hide');
			
			if($(document.body).hasClass('djext-hide')) {
				Cookie.write('djtop-hide', 1);
			} else {
				Cookie.write('djtop-hide', 0);
			}
		});
		
		bar.setStyle('display', '');
	}
});

})(document.id);

function inIframe () {
    try {
        return window.self !== window.top;
    } catch (e) {
        return true;
    }
}