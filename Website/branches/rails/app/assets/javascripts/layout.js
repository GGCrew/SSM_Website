//$(document).ready(function() {
//	var banner_text = $('#head .banner .text .animate');
//	$(banner_text).hide();
//	$(banner_text).css('top', '.5em');
//	$(banner_text).each(function(index, item) {
//		$(item)
//			.delay((index + 1) * 1000)
//			.animate({
//				top: '0em',
//				opacity: 'toggle'
//			}, {
//				duration: 'slow',
//				easing: 'swing',
//				queue: true
//			})
//	});
//});


function display_slide(slideNumber) {
	switch(slideNumber) {
		case 1:
			var slide = $('.screen #slide1');
			var image = $(slide).find('img.logo');
			var text = $(slide).find('.text .animate');

			$('.screen .slide').hide();
			$('.screen .slide').removeClass('current');

			$(slide).addClass('current');
			$(image).hide();
			$(text).hide();
			$(text).css('top', '.5em');
			
			$(slide).show();

			$(image).animate({
				opacity: 'show'
			}, {
				duration: 'slow',
				easing: 'swing',
				queue: false
			});

			$(text).each(function(index, item) {
				$(item)
					.delay((index + 1) * 1000)
					.animate({
						top: '0em',
						opacity: 'show'
					}, {
						duration: 'slow',
						easing: 'swing',
						queue: true
					})
			});

			break;

		case 2:
			var slide = $('.screen #slide2');
			var image = $(slide).find('img.sample');
			var text = $(slide).find('.text .animate');

			$('.screen .slide.current').animate({opacity: 'hide'}, {duration: 'slow'});
			$('.screen .slide').removeClass('current');

			$(slide).addClass('current');
			$(image).hide();
			$(text).hide();
			$(text).css('top', '.5em');
			
			$(slide).show();

			$(image).animate({
				opacity: 'show'
			}, {
				duration: 'slow',
				easing: 'swing',
				queue: false
			});

			$(text).each(function(index, item) {
				$(item)
					.delay((index + 1) * 1000)
					.animate({
						top: '0em',
						opacity: 'show'
					}, {
						duration: 'slow',
						easing: 'swing',
						queue: true
					})
			});

			break;

		case 3:
			var slide = $('.screen #slide3');
			var camera = $(slide).find('#camera');
			var camera_image = $(camera).find('img.sample');
			var screen = $(slide).find('#screen');
			var slideshow = $(slide).find('#slideshow');
			var text = $(slide).find('.text .animate');
			var cameraText = $(text).filter('[data-order=1]');
			var wirelessText = $(text).filter('[data-order=2]');
			var slideshowText = $(text).filter('[data-order=3]');
		
			//$('.screen .slide.current').animate({opacity: 'hide'}, {duration: 'slow'});
			$('.screen .slide.current').hide();
			$('.screen .slide').removeClass('current');

			$(slide).addClass('current');
			$(screen).hide();
			$(slideshow).hide();
			$(text).hide();
			$(text).css('top', '.5em');

			$(camera).css({top: '', left: '', width: '', height: ''});
			$(camera_image).css({top: '', left: '', width: '', height: ''});
			$(camera).show();
			$(slide).show();

			$(cameraText)
				.animate({
					top: '0em',
					opacity: 'show'
				}, {
					duration: 'slow',
					easing: 'swing',
					queue: true,
					complete: function() {
						var slide = $('.screen #slide3');
						var camera = $(slide).find('#camera');
						var camera_image = $(camera).find('img.sample');

						$(camera_image)
							.animate({
								top: '-104px',
								left: '-255px'
							}, {
								duration: 'slow',
								easing: 'swing',
								queue: false
							});
						$(camera)
							.animate({
								top: '104px',
								left: '255px',
								height: '34px',
								width: '44px'
							}, {
								duration: 'slow',
								easing: 'swing',
								queue: false,
								complete: function() {
									var slide = $('.screen #slide3');
									var camera = $(slide).find('#camera');
									var text = $(slide).find('.text .animate');
									var wirelessText = $(text).filter('[data-order=2]');

									$(wirelessText)
										.animate({
											top: '0em',
											opacity: 'show'
										}, {
											duration: 'slow',
											easing: 'swing',
											queue: true
										});
									$(camera)
									.delay('slow')
									.animate({
										top: '70px',
										left: '700px'
									}, {
										duration: 'slow',
										easing: 'swing',
										queue: true,
										complete: function () {
											var slide = $('.screen #slide3');
											var camera = $(slide).find('#camera');
											var screen = $(slide).find('#screen');
											var screen_video = $(screen).find('img.video');
											var screen_tube = $(screen).find('img.tube');
											var slideshow = $(slide).find('#slideshow');
											var text = $(slide).find('.text .animate');
											var slideshowText = $(text).filter('[data-order=3]');

											$(screen_tube).css({top: '+=100'});
											$(screen_video).css({top: '370px', height: '0px'});
											$(slideshow).css({top: '70px', left: '700px', width: '44px', height: '34px'});
											$(slideshow).hide();

											$(screen).show();

											$(slideshowText)
												.animate({
													top: '0em',
													opacity: 'show'
												}, {
													duration: 'slow',
													easing: 'swing',
													queue: true
												});
											$(screen_tube)
												.delay('slow')
												.animate({
													top: '-=100'
												}, {
													duration: 'slow',
													easing: 'swing',
													queue: true
												})
											$(screen_video)
												.delay('slow')
												.delay('slow')
												.animate({
													top: '0px',
													height: '370px'
												}, {
													duration: 'slow',
													easing: 'swing',
													queue: true
												})
											$(camera)
												.delay('slow')
												.delay('slow')
												.delay('slow')
												.animate({
													top: '25px',
													left: '11px',
													width: '578px',
													height: '338px',
													opacity: 'hide'
												}, {
													duration: 'slow',
													easing: 'swing',
													queue: true
												})
											$(slideshow)
												.delay('slow')
												.delay('slow')
												.delay('slow')
												.animate({
													top: '25px',
													left: '11px',
													width: '578px',
													height: '338px',
													opacity: 'show'
												}, {
													duration: 'slow',
													easing: 'swing',
													queue: true
												})
											
										}
									})
								}
							});
					}
				});

			
			break;
	}
}