$(document).ready(function() {
	var banner_text = $('#head .banner .text .animate');
	$(banner_text).hide();
	$(banner_text).css('top', '.5em');
	$(banner_text).each(function(index, item) {
		$(item)
			.delay((index + 1) * 1000)
			.animate({
				top: '0em',
				opacity: 'toggle'
			}, {
				duration: 'slow',
				easing: 'swing',
				queue: true
			})
	});
});
