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

			// prep slide
			$(slide).find('*').hide();

			// away we go!
			$(slide).addClass('current');
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

			// prep slide
			$(slide).find('*').hide();
			$(text).css('top', '.5em');
			
			$(slide).addClass('current');
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
			// display cameras and first text line
			var slide = $('.screen #slide3');
			//var screen = $(slide).find('#screen');
			//var cameras = $(slide).find('#cameras');
			//var wireless = $(slide).find('#wireless');
			//var slideshow = $(slide).find('#slideshow');
			var text = $(slide).find('.text .animate');
			var cameraText = $(text).filter('[data-order=1]');
			//var wirelessText = $(text).filter('[data-order=2]');
			//var slideshowText = $(text).filter('[data-order=3]');
		
			$('.screen .slide.current').animate({opacity: 'hide'}, {duration: 'slow'});
			$('.screen .slide').removeClass('current');

			// prep slide
			$(slide).find('*').hide();
			$(text).css('top', '.5em');

			$(slide).addClass('current');
			$(slide).show();

			$(cameraText).parent().show();
			$(cameraText)
				.delay('slow')
				.animate({
					top: '0em',
					opacity: 'show'
				}, {
					duration: 'slow',
					easing: 'swing',
					queue: true,
					complete: function() {
						// display cameras
						var slide = $('.screen #slide3');
						var screen = $(slide).find('#screen');
						var cameraContainer = $(slide).find('#cameras');
						var cameras = $(slide).find('#cameras .camera');
						var flash = $(slide).find('#cameras .flash');

						$(cameras).show();
						$(cameraContainer)
							.animate({
								opacity: 'show'
							}, {
								duration: 'slow',
								easing: 'swing',
								queue: true,
								complete: function() {
									// flashes
									var slide = $('.screen #slide3');
									var cameras = $(slide).find('#cameras .camera');
									var flash = $(slide).find('#cameras .flash');

									for(var counter = 0; counter < (cameras.length - 1); counter++) {
										var flashPosition = {
											top: parseInt($(cameras[counter]).css('top')) - 90 + 'px',
											left: parseInt($(cameras[counter]).css('left')) - 25 + 'px'
										};
										$(flash)
											.animate(flashPosition, {duration: 50, queue: true})
											.animate({opacity: 'show'}, {duration: 10, queue: true})
											.delay(100)
											.animate({
												opacity: 'hide'
											}, {
												duration: 10,
												queue: true
											});
									} 
									var counter = (cameras.length - 1);
									var flashPosition = {
										top: parseInt($(cameras[counter]).css('top')) - 90 + 'px',
										left: parseInt($(cameras[counter]).css('left')) - 25 + 'px'
									};
									$(flash)
										.animate(flashPosition, {duration: 50, queue: true})
										.animate({opacity: 'show'}, {duration: 10, queue: true})
										.delay(100)
										.animate({
											opacity: 'hide'
										}, {
											duration: 10,
											queue: true,
											complete: function() {
												// animate "wireless magic"
												var slide = $('.screen #slide3');
												var text = $(slide).find('.text .animate');
												var wirelessText = $(text).filter('[data-order=2]');

												$(wirelessText).find('*').show();
												$(wirelessText)
													.animate({
														top: '0em',
														opacity: 'show'
													}, {
														duration: 'slow',
														easing: 'swing',
														queue: true,
														complete: function() {
															// display wireless antenna
															var slide = $('.screen #slide3');
															var wireless = $(slide).find('#wireless');
															var antenna = $(wireless).find('.antenna');
															
															$(antenna).hide();
															$(wireless).show();
											
															$(antenna)
																.animate({
																	opacity: 'show'
																}, {
																	duration: 'slow',
																	easing: 'swing',
																	queue: true,
																	complete: function() {
																		// animate wireless transfers
																		var slide = $('.screen #slide3');
																		var cameras = $(slide).find('#cameras .camera');
																		var wireless = $(slide).find('#wireless');
																		var pictures = $(wireless).find('.sample');
																		var antenna = $(wireless).find('.antenna');
																		
																		// position wireless transfers
																		for(var counter = 0; counter < pictures.length; counter++) {
																			var pictureCSS = {
																				top: parseInt($(cameras[counter % cameras.length]).css('top')) + 5 + 'px',
																				left: parseInt($(cameras[counter % cameras.length]).css('left')) + 10 + 'px',
																				width: '70px',
																				height: '45px'
																			};
																			$(pictures[counter]).css(pictureCSS);
																			$(pictures[counter]).show();
																		}
																		
																		// animate transfers
																		var delay = 200;
																		var animationCSS = {
																			top: parseInt($(antenna).css('top')) + 'px',
																			left: parseInt($(antenna).css('left')) + 'px',
																			opacity: 'hide'
																		};
																		for(var counter = 0; counter < (pictures.length - 1); counter++) {
																			$(pictures[counter])
																				.delay(counter * delay)
																				.animate(
																					animationCSS,
																				{
																					duration: 'slow',
																					easing: 'swing',
																					queue: true
																				});
																		}
																		var counter = (pictures.length - 1);
																		$(pictures[counter])
																			.delay(counter * delay)
																			.animate(
																				animationCSS,
																			{
																				duration: 'slow',
																				easing: 'swing',
																				queue: true,
																				complete: function() {
																					// animate "live slideshow"
																					var slide = $('.screen #slide3');
																					var text = $(slide).find('.text .animate');
																					var slideshowText = $(text).filter('[data-order=3]');
																					
																					$(slideshowText)
																						.animate({
																							top: '0em',
																							opacity: 'show'
																						}, {
																							duration: 'slow',
																							easing: 'swing',
																							queue: true,
																							complete: function() {
																								// hide cameras
																								var slide = $('.screen #slide3');
																								var cameras = $(slide).find('#cameras');
																								
																								$(cameras)
																									.animate({
																										opacity: 'hide'
																									}, {
																										duration: 'slow',
																										easing: 'swing',
																										queue: true,
																										complete: function() {
																											// display video tube
																											var slide = $('.screen #slide3');
																											var videoScreen = $(slide).find('#videoscreen');
																											var videoScreenTube = $(videoScreen).find('.tube');
																											
																											$(videoScreenTube).css({top: '+=100'});
																											$(videoScreenTube).show();
																											$(videoScreen).show();
																							
																											$(videoScreenTube)
																												.animate({
																													top: '-=100'
																												}, {
																													duration: 'slow',
																													easing: 'swing',
																													queue: true,
																													complete: function() {
																														// display video screen
																														var slide = $('.screen #slide3');
																														var videoScreen = $(slide).find('#videoscreen');
																														var videoScreenTube = $(videoScreen).find('.tube');
																														var videoScreenScreen = $(videoScreen).find('.video');
																														var videoScreenScreenTop = $(videoScreenTube)[0].offsetTop + 10; //($(videoScreenTube)[0].clientHeight % 2)
																														console.log('videoScreenScreenTop: ' + videoScreenScreenTop);

																														$(videoScreenScreen).css({
																															top: videoScreenScreenTop + 'px',
																															height: '0'
																														});
																														$(videoScreenScreen).show();
																														
																														$(videoScreenScreen)
																															.animate({
																																top: '0px',
																																height: videoScreenScreenTop + 'px'
																															}, {
																																duration: 'slow',
																																easing: 'swing',
																																queue: true,
																																complete: function() {
																																	// animate transfer to screen
																																	var slide = $('.screen #slide3');
																																	var wireless = $(slide).find('#wireless .sample').first();
																																	var slideshow = $(slide).find('#slideshow');
																																	$(slideshow)
																																		.css({
																																			top: $(wireless).css('top'),
																																			left: $(wireless).css('left'),
																																			width: $(wireless).css('width'),
																																			height: $(wireless).css('height')
																																		});
																																	$(slideshow).find('.sample').first().show();
																																	$(slideshow)
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
																																				var slideshowImages = $(slideshow).find('img.sample');
																																				var delay = 1000;
																																			
																																				var counter = 0;
																																				$(slideshowImages[counter])
																																					.delay(delay)
																																					.animate({opacity: 'hide'}, {duration: 'fast', easing: 'linear', queue: true});

																																				for(counter = 1; counter < ($(slideshowImages).length - 1); counter++) {
																																					$(slideshowImages[counter])
																																						.delay((counter + 0) * delay)
																																						.animate({opacity: 'show'}, {duration: 'fast', easing: 'linear', queue: true})
																																						.delay(delay)
																																						.animate({opacity: 'hide'}, {duration: 'fast', easing: 'linear', queue: true});
																																				}

																																				counter = $(slideshowImages).length - 1;
																																				$(slideshowImages[counter])
																																					.delay((counter + 0) * delay)
																																					.animate({opacity: 'show'}, {duration: 'fast', easing: 'linear', queue: true})
																																					.delay(delay)
																																					.animate({
																																						opacity: 'hide'
																																					}, {
																																						duration: 'fast',
																																						easing: 'linear',
																																						queue: true,
																																						complete: function(){
																																							var slide = $('.screen #slide3');
																																							$(slide)
																																								.animate({
																																									opacity: 'hide'
																																								}, {
																																									duration: 'slow',
																																									easing: 'linear',
																																									queue: true,
																																									complete: function(){
																																										display_slide(4, true);
																																									}
																																								});
																																						}
																																					});
																																			}
																																		});
																																}
																															});
																													}
																												});
																										}
																									});
																							}
																						});
																				}
																			});
																	}
																});
														}
													});
											}
										});
								}
								
								
								
								
								
								//	// animate "wireless magic"
								//	var slide = $('.screen #slide3');
								//	var text = $(slide).find('.text .animate');
								//	var wirelessText = $(text).filter('[data-order=2]');
                //
								//	$(wirelessText)
								//		.animate({
								//			top: '0em',
								//			opacity: 'show'
								//		}, {
								//			duration: 'slow',
								//			easing: 'swing',
								//			queue: true,
								//			complete: function() {
								//				// display wireless antenna
								//				var slide = $('.screen #slide3');
								//				var wireless = $(slide).find('#wireless');
								//				var antenna = $(wireless).find('.antenna');
								//				
								//				$(antenna).hide();
								//				$(wireless).show();
                //
								//				$(antenna)
								//					.animate({
								//						opacity: 'show'
								//					}, {
								//						duration: 'slow',
								//						easing: 'swing',
								//						queue: true,
								//						complete: function() {
								//							// animate flashes and wireless transfers
								//							var slide = $('.screen #slide3');
								//							var cameraContainer = $(slide).find('#cameras')
								//							var cameras = $(cameraContainer).find('.camera');
								//							var flash = $(cameraContainer).find('.flash');
								//							var pictureContainer = $(slide).find('#wireless');
								//							var pictures = $(pictureContainer).find('.sample');
								//							var antenna = $(pictureContainer).find('.antenna');
								//							
								//							// position wireless transfers
								//							for(var counter = 0; counter < pictures.length; counter++) {
								//								var pictureCSS = {
								//									top: parseInt($(cameras[counter % cameras.length]).css('top')) + 5 + 'px',
								//									left: parseInt($(cameras[counter % cameras.length]).css('left')) + 10 + 'px',
								//									width: '70px',
								//									height: '45px'
								//								};
								//								$(pictures[counter]).css(pictureCSS);
								//								$(pictures[counter]).show();
								//							}
								//	
								//						}
								//					});
								//			}
								//		});
								//}
							});
					}
				});
				
//					complete: function() {
//						// display 2nd text line, wireless antenna, camera flashes, and thumbnails
//						var slide = $('.screen #slide3');
//						var cameraContainer = $(slide).find('#cameras')
//						var cameras = $(cameraContainer).find('.camera');
//						var pictureContainer = $(slide).find('#wireless');
//						var pictures = $(pictureContainer).find('.sample');
//						var antenna = $(pictureContainer).find('.antenna');
//						var text = $(slide).find('.text .animate');
//						var wirelessText = $(text).filter('[data-order=2]');
//
//						$(antenna).hide();
//
//						$(pictureContainer).show();
//
//						$(wirelessText)
//							.animate({
//								top: '0em',
//								opacity: 'show'
//							}, {
//								duration: 'slow',
//								easing: 'swing',
//								queue: true
//							});
//
//						$(antenna)
//							.delay('slow')
//							.animate(
//								{opacity: 'show'},
//								{
//									duration: 'slow',
//									easing: 'swing',
//									queue: true,
//						//		}
//						//	);
//            //
//						//$(cameraContainer)
//						//	.delay('slow')
//						//	.animate(
//						//		{opacity: 'hide'},
//						//		{
//						//			duration: 'slow',
//						//			easing: 'swing',
//						//			queue: true,
//					complete: function() {
//						var slide = $('.screen #slide3');
//						var cameras = $(slide).find('#cameras .camera');
//						var flash = $(slide).find('#cameras .flash');
//						var pictures = $(slide).find('#wireless .sample');
//
//						// position pictures
//						for(var counter = 0; counter < pictures.length; counter++) {
//							var pictureCSS = {
//								top: parseInt($(cameras[counter % cameras.length]).css('top')) + 5 + 'px',
//								left: parseInt($(cameras[counter % cameras.length]).css('left')) + 10 + 'px',
//								width: '70px',
//								height: '45px'
//							};
//							$(pictures[counter]).css(pictureCSS);
//							$(pictures[counter]).show();
//						}
//
//						for(var counter = 0; counter < cameras.length; counter++) {
//							var flashPosition = {
//								top: parseInt($(cameras[counter]).css('top')) - 90 + 'px',
//								left: parseInt($(cameras[counter]).css('left')) - 25 + 'px'
//							};
//							if(counter != (cameras.length - 1)) {
//									$(flash)
//										.animate(flashPosition, {duration: 50, queue: true})
//										.animate({opacity: 'show'}, {duration: 10, queue: true})
//										.delay(100)
//										.animate({
//											opacity: 'hide'
//										}, {
//											duration: 10,
//											queue: true,
//											complete: function() {
//												console.log(this);
//											}
//										});
//								} else {
//								//	$(flash)
//								//		.animate(flashPosition, {duration: 100, queue: true})
//								//		.animate({opacity: 'show'}, {duration: 10, queue: true})
//								//		.delay(100)
//								//		.animate(
//								//			{opacity: 'hide'},
//								//			{
//								//				duration: 10,
//								//				easing: 'swing',
//								//				queue: true,
//								//								complete: function() {
//								//									var slide = $('.screen #slide3');
//								//									var pictureContainer = $(slide).find('#wireless');
//								//									var pictures = $(pictureContainer).find('.sample');
//								//									var antenna = $(pictureContainer).find('.antenna');
//								//									
//								//									for(var counter = 0; counter < $(pictures).length; counter++) {
//								//										var offset = counter * 0;
//								//										//$(pictures[counter]).css({zIndex: $(pictures).length - counter});
//								//										if(counter != $(pictures).length - 1) {
//								//											$(pictures[counter])
//								//												.animate(
//								//													{
//								//														top: 75 - offset + 'px',
//								//														left: 650 + offset + 'px',
//								//														opacity: 'hide'
//								//													},
//								//													{
//								//														duration: 'slow',
//								//														easing: 'swing',
//								//														queue: true
//								//													}
//								//												);
//								//										} else {
//								//											$(pictures[counter])
//								//												.animate(
//								//													{
//								//														top: 75 - offset + 'px',
//								//														left: 650 + offset + 'px',
//								//														opacity: 'hide'
//								//													},
//								//													{
//								//														duration: 'slow',
//								//														easing: 'swing',
//								//														queue: true,
//								//														complete: function () {
//								//															var slide = $('.screen #slide3');
//								//															var wireless = $(slide).find('#wireless');
//								//															var screen = $(slide).find('#screen');
//								//															var screen_video = $(screen).find('img.video');
//								//															var screen_tube = $(screen).find('img.tube');
//								//															var slideshow = $(slide).find('#slideshow');
//								//															var text = $(slide).find('.text .animate');
//								//															var slideshowText = $(text).filter('[data-order=3]');
//								//										
//								//															$(screen_tube).css({top: '+=100'});
//								//															$(screen_video).css({top: '370px', height: '0px'});
//								//															$(slideshow).css({top: '70px', left: '700px', width: '44px', height: '34px'});
//								//															$(slideshow).hide();
//								//															$(slideshow).find('img.sample').hide();
//								//															$(slideshow).find('img.sample').first().show();
//								//										
//								//															$(screen).show();
//								//										
//								//															$(slideshowText)
//								//																.animate({
//								//																	top: '0em',
//								//																	opacity: 'show'
//								//																}, {
//								//																	duration: 'slow',
//								//																	easing: 'swing',
//								//																	queue: true,
//								//																	complete: function() {
//								//																		var slide = $('.screen #slide3');
//								//																		var screen = $(slide).find('#screen');
//								//																		var screen_tube = $(screen).find('img.tube');
//                //
//								//																		$(screen_tube)
//								//																			.animate({
//								//																				top: '-=100'
//								//																			}, {
//								//																				duration: 'slow',
//								//																				easing: 'swing',
//								//																				queue: true,
//								//																				complete: function() {
//								//																					var slide = $('.screen #slide3');
//								//																					var screen = $(slide).find('#screen');
//								//																					var screen_video = $(screen).find('img.video');
//								//																					$(screen_video)
//								//																						.animate({
//								//																							top: '0px',
//								//																							height: '370px'
//								//																						}, {
//								//																							duration: 'slow',
//								//																							easing: 'swing',
//								//																							queue: true,
//								//																							complete: function() {
//								//																								var slide = $('.screen #slide3');
//								//																								var wireless = $(slide).find('#wireless');
//								//																								var slideshow = $(slide).find('#slideshow');
//								//																								$(wireless)
//								//																									.animate({
//								//																										//top: '70px',
//								//																										//left: '-400px',
//								//																										//width: '578px',
//								//																										//height: '338px',
//								//																										opacity: 'hide'
//								//																									}, {
//								//																										duration: 'slow',
//								//																										easing: 'swing',
//								//																										queue: true
//								//																									})
//								//																								$(slideshow)
//								//																									.animate({
//								//																										top: '25px',
//								//																										left: '11px',
//								//																										width: '578px',
//								//																										height: '338px',
//								//																										opacity: 'show'
//								//																									}, {
//								//																										duration: 'slow',
//								//																										easing: 'swing',
//								//																										queue: true,
//								//																										complete: function() {
//								//																											var slide = $('.screen #slide3');
//								//																											var slideshow = $(slide).find('#slideshow');
//								//																											var slideshow_images = $(slideshow).find('img.sample');
//								//																											var delay = 1000;
//								//																										
//								//																											$(slideshow_images).each(function(index, item) {
//								//																												if(item !== $(item).parent().children().last()[0]) {
//								//																													$(item)
//								//																													.delay((index + 0) * delay)
//								//																													.animate({opacity: 'show'}, {duration: 'fast', easing: 'linear', queue: true})
//								//																													.delay(delay)
//								//																													.animate({opacity: 'hide'}, {duration: 'fast', easing: 'linear', queue: true})
//								//																												} else {
//								//																													$(item)
//								//																													.delay((index + 0) * delay)
//								//																													.animate({opacity: 'show'}, {duration: 'fast', easing: 'linear', queue: true})
//								//																													.delay(delay)
//								//																													.animate({opacity: 'hide'}, {duration: 'fast', easing: 'linear', queue: true, complete: function(){var slide = $('.screen #slide3'); $(slide).animate({opacity: 'hide'}, {duration: 'slow', easing: 'linear', queue: true, complete: function(){display_slide(4, true);}});}})
//								//																												}
//								//																											});
//								//																										}
//								//																									})
//								//																							}
//								//																						})
//								//																				}
//								//																			})
//								//																	}
//								//																});																							
//								//														}
//								//													}
//								//												);
//								//										}
//								//									}
//								//								}
//								//							}
//								//						)
//								//				}
//								//			});								
//								}
//						}
//						
//						//$(camera_image)
//						//	.animate({
//						//		top: '-104px',
//						//		left: '-255px'
//						//	}, {
//						//		duration: 'slow',
//						//		easing: 'swing',
//						//		queue: false
//						//	});
//						//$(camera)
//						//	.animate({
//						//		top: '104px',
//						//		left: '255px',
//						//		height: '34px',
//						//		width: '44px'
//						//	}, {
//						//		duration: 'slow',
//						//		easing: 'swing',
//						//		queue: false,
//						//		complete: function() {
//						//			var slide = $('.screen #slide3');
//						//			var camera = $(slide).find('#camera');
//						//			var text = $(slide).find('.text .animate');
//						//			var wirelessText = $(text).filter('[data-order=2]');
//            //
//						//			$(wirelessText)
//						//				.animate({
//						//					top: '0em',
//						//					opacity: 'show'
//						//				}, {
//						//					duration: 'slow',
//						//					easing: 'swing',
//						//					queue: true
//						//				});
//						//			$(camera)
//						//			.delay('slow')
//						//			.animate({
//						//				top: '70px',
//						//				left: '700px'
//						//			}, {
//						//				duration: 'slow',
//						//				easing: 'swing',
//						//				queue: true,
//						//			})
//						//		}
//						//	});
//					}
//				});
//				});
//				}
//				});
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


function display_service_area_map(zoomLevel) {
	// Requires the Google Maps API
	var mapOptions = {
		center: { lat: 33.931, lng: -117.5},
		zoom: zoomLevel
	};
	var map = new google.maps.Map(document.getElementById('service-area-map-canvas'),
			mapOptions);

	// radius is measured in meters; ~1609m/mile
	var serviceAreaOptions = {
		strokeColor: '#0700FF',
		strokeOpacity: 0.8,
		strokeWeight: 2,
		fillColor: '#0700FF',
		fillOpacity: 0.1,
		map: map,
		center: { lat: 33.931, lng: -117.549},
		radius: (1609 * 90)
	};
	// Add the circle for this city to the map.
	serviceAreaCircle = new google.maps.Circle(serviceAreaOptions);

	// Optionally add current position to map
	navigator.geolocation.getCurrentPosition(function(position) {
		var geolocate = new google.maps.LatLng(position.coords.latitude, position.coords.longitude);
		var symbolOptions = {
		strokeColor: '#0700FF',
		strokeOpacity: 0.8,
		strokeWeight: 1,
		fillColor: '#0700FF',
		fillOpacity: 0.3,
		scale: 5,
		path: google.maps.SymbolPath.BACKWARD_CLOSED_ARROW
		};

		var markerOptions = {
			position: geolocate,
			title: 'Your current location (give or take)',
			icon: symbolOptions,
			map: map
		};
		// Add the marker to the map
		var marker = new google.maps.Marker(markerOptions);
	});
}
