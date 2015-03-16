$(document).ready(function() {
	var banner_text = $('#head .banner .text .animate');
	$(banner_text).hide();
	$(banner_text).each(function(index, item) {
		$(item).delay((index + 1) * 1000).fadeIn({
			duration: 'slow',
			easing: 'linear',
			queue: true
		});
	});
});
