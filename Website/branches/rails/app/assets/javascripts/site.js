//$(document).ready(function() {
//	display_slide(1, true);
//});


function display_slide(slideNumber, playNextSlide) {
	switch(slideNumber) {
		case 1:
			// Stop all other animations
			//var screenItems = $('.screen *');
			//$(screenItems).finish();
			//$(screenItems).finish();
			//$(screenItems).finish();
			//$(screenItems).clearQueue();

			// Set local variables
			var slide = $('.screen #slide1');
			var image = $(slide).find('img.logo');

			// hide all slides
			$('.screen .slide').hide();
			$('.screen .slide').removeClass('current');

			// set this slide's starting positions
			$(slide).addClass('current');
			$(image).hide();

			// away we go!
			$(slide).show();

			$(image).animate({
				opacity: 'show'
			}, {
				duration: 'slow',
				easing: 'swing',
				queue: false
			});

			if(playNextSlide) {
				$(slide)
					.delay(2000)	// arbitrarily long delay 
					.animate(
						{top: '0'},	// no effect
						{
							duration: 0,
							queue: true,
							complete: function(){display_slide(2, true);}
						}
					);
			}

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

			if(playNextSlide) {
				$(slide)
					.delay(6000)	// arbitrarily long delay 
					.animate(
						{top: '0'},	// no effect
						{
							duration: 0,
							queue: true,
							complete: function(){display_slide(3, true);}
						}
					);
			}
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
											$(slideshow).find('img.sample').hide();
											$(slideshow).find('img.sample').first().show();

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
													queue: true,
													complete: function() {
														var slide = $('.screen #slide3');
														var slideshow = $(slide).find('#slideshow');
														var slideshow_images = $(slideshow).find('img.sample');
													
														$(slideshow_images).each(function(index, item) {
															if(item !== $(item).parent().children().last()[0]) {
																$(item)
																.delay((index + 0) * 2000)
																.animate({opacity: 'show'}, {duration: 'fast', easing: 'linear', queue: true})
																.delay(2000)
																.animate({opacity: 'hide'}, {duration: 'fast', easing: 'linear', queue: true})
															} else {
																$(item)
																.delay((index + 0) * 2000)
																.animate({opacity: 'show'}, {duration: 'fast', easing: 'linear', queue: true})
																.delay(2000)
																.animate({opacity: 'hide'}, {duration: 'fast', easing: 'linear', queue: true, complete: function(){var slide = $('.screen #slide3'); $(slide).animate({opacity: 'hide'}, {duration: 'slow', easing: 'linear', queue: true, complete: function(){display_slide(4, true);}});}})
															}
														});
													}
												})
											
										}
									})
								}
							});
					}
				});
			break;

		case 4:
			var slide = $('.screen #slide4');
			var image = $(slide).find('img.logo');
			var text = $(slide).find('.text .animate');

			// clear other slides
			$('.screen .slide').hide();
			$('.screen .slide').removeClass('current');

			// set this slide's starting positions
			$(slide).addClass('current');
			$(image).hide();
			$(text).hide();
			$(text).css('top', '.5em');

			// away we go!
			$(slide).show();

			$(image)
				.delay(1000)
				.animate({
					opacity: 'show'
				}, {
					duration: 'slow',
					easing: 'swing',
					queue: true
				});

			$(text).each(function(index, item) {
				$(item)
					.delay((index + 2) * 1000)
					.animate({
						top: '0em',
						opacity: 'show'
					}, {
						duration: 'slow',
						easing: 'swing',
						queue: true
					})
			});

			if(playNextSlide) {
				// NOP
			}

			break;
	}
}
