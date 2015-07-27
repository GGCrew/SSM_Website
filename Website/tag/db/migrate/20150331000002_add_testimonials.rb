class AddTestimonials < ActiveRecord::Migration
  def change
		Testimonial.create!(
			from: 'Buck & Tina',
			quote: 'AMAZING! I have been in the wedding industry for 21 years and thought I had seen every possible service offered for that “special day” but when I had my wedding, (finally-lol), my friends surprised me with having you there and it really was magical! What a great enhancement to our wedding day! Honestly, it has added a very special kind of instant magic to our event. The following day we had a potluck brunch to relax, (well, okay recover), and played the dvd all day as people came over. It was great!

Your crew was professional, unobtrusive, and even took pics as well! The instant viewing throughout the reception was perfect and all our guests can continue to enjoy the pics on the website gallery. I highly recommend your service.

Again, AMAZING!'
		)


		Testimonial.create!(
			from: 'Ashlee & Alex Sanchez',
			quote: 'Alex and I would like to give you guys our most sincere thank you for the amazing service you guys provided for our wedding! We were so excited to see all of the photos that everyone took and were also pleasantly surprised by the photos you also took throughout our wedding. It was also a nice surprise to actually get the DVD at the end of the night with a custom cover and labeled DVD. Talk about service! You guys were worth every penny and more! Most definetly the biggest bang for our buck! You made our wedding so much more amazing and fun for our guests because of the genius idea you have created! I’m sure you will be getting business from our single guests when they get married! We highly recommend you guys for anyone that wants a unique and memorable feature to their special day. Thank you!'
		)


		Testimonial.create!(
			from: 'Young & Vivian',
			quote: 'We just wanted to give our most sincere thanks to you and your team. We were going through pictures and realized the effort and individual attention you gave to our wedding. People are asking for your information left and right. We’ll of course give them our honest opinion, that your services were worth their weight in gold. Worth much more than what you are charging for such incredible services.'
		)


		Testimonial.create!(
			from: 'Adrian & Adrianna',
			quote: 'Thank you so much for your wonderful work on 2/23/13. I am so happy as well as Adrian with the pics. I did not even realize you guys were taking pics of the ceremony which was a good surprise since I do not have any of the professional pics back yet. You guys are amazing I cannot say enough about you and your services thank you so much for everything.'
		)
  end
end
