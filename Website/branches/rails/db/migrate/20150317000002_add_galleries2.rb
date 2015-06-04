class AddGalleries2 < ActiveRecord::Migration
  def change
		Gallery.create!(title: "OC Brides Networking Event",						event_date: Date.new(2015,2,18),	smugmug_album_id: '47593029', smugmug_album_key: 'kxn3Ls', album_url: "http://snapshowmagic.smugmug.com/Events/OC-Brides-Networking-Event-1/")
		Gallery.create!(title: "Wedgewood Awards Banquet",							event_date: Date.new(2015,2,16),	smugmug_album_id: '47552950', smugmug_album_key: 'jvQpCD', album_url: "http://snapshowmagic.smugmug.com/Events/Wedgewood-Awards-Banquet")
		Gallery.create!(title: "Daniel and Leslie",											event_date: Date.new(2015,1,4),		smugmug_album_id: '46762858', smugmug_album_key: '5v9pdP', album_url: "http://snapshowmagic.smugmug.com/Weddings/Daniel-and-Leslie-01042015")
		Gallery.create!(title: "Robert's X-mas Party",									event_date: Date.new(2014,12,13),	smugmug_album_id: '46351353', smugmug_album_key: 'vf4KZq', album_url: "http://snapshowmagic.smugmug.com/Parties/Roberts-X-mas-Party-12132014")
		Gallery.create!(title: "Buck and Tina",													event_date: Date.new(2014,11,16),	smugmug_album_id: '45774308', smugmug_album_key: 'JTLQ7v', album_url: "http://snapshowmagic.smugmug.com/Weddings/Buck-and-Tina-11162014/")
		Gallery.create!(title: "Wedgewood Menifee Lakes Bridal Show",		event_date: Date.new(2014,11,11),	smugmug_album_id: '45664020', smugmug_album_key: '2HHMXP', album_url: "http://snapshowmagic.smugmug.com/Events/Wedgewood-Menifee-Lakes-Bridal")

		Gallery.create!(title: "Eagle Glen Bridal Show",								event_date: Date.new(2015,3,22),	smugmug_album_id: '48225498', smugmug_album_key: 'tn5Ln2', album_url: "http://snapshowmagic.smugmug.com/Events/Eagle-Glen-Bridal-Show-3222015")
		Gallery.create!(title: "Wedgewood Sierra La Verne Bridal Show",	event_date: Date.new(2015,3,18),	smugmug_album_id: '48101942', smugmug_album_key: 'mC7qQ5', album_url: "http://snapshowmagic.smugmug.com/Events/Wedgewood-Sierra-La-Verne/")

		Gallery.create!(title: "Michael and Brittany",									event_date: Date.new(2015,3,21),	smugmug_album_id: '48152709', smugmug_album_key: 'kShLpz', album_url: "http://snapshowmagic.smugmug.com/Weddings/Michael-and-Brittany-03212015")

		Gallery.create!(title: "Wedgewood at The Retreat Bridal Show",	event_date: Date.new(2015,3,31),	smugmug_album_id: '48350167', smugmug_album_key: 'Xnrq4P', album_url: "http://snapshowmagic.smugmug.com/Events/Wedgewood-at-The-Retreat-1/")
		Gallery.create!(title: "NACC Networkers",												event_date: Date.new(2015,4,08),	smugmug_album_id: '48650976', smugmug_album_key: 'LF9NM3', album_url: "http://snapshowmagic.smugmug.com/Events/NACC-Networkers-04082015/")
		Gallery.create!(title: "Demario and Brandi",										event_date: Date.new(2015,4,12),	smugmug_album_id: '48651547', smugmug_album_key: 'Hw7rvm', album_url: "http://snapshowmagic.smugmug.com/Weddings/Demario-and-Brandi-04122015/")

		Gallery.create!(title: "Bill and Christine",										event_date: Date.new(2015,5,17),	smugmug_album_id: '49339045', smugmug_album_key: 'bVrv8g', album_url: "http://snapshowmagic.smugmug.com/Weddings/Bill-and-Christine-05172015/")
		Gallery.create!(title: "Warren and Sheila",											event_date: Date.new(2015,5,23),	smugmug_album_id: '49462967', smugmug_album_key: 'mZPN3g', album_url: "http://snapshowmagic.smugmug.com/Weddings/Warren-and-Sheila-05232015/")
		Gallery.create!(title: "Wedgewood Menifee Lakes Bridal Show",		event_date: Date.new(2015,5,20),	smugmug_album_id: '49406532', smugmug_album_key: 'Jwrjsw', album_url: "http://snapshowmagic.smugmug.com/Events/Wedgewood-Menifee-Lakes/")
		Gallery.create!(title: "Wedgewood Indian Hills Bridal Show",		event_date: Date.new(2015,4,29),	smugmug_album_id: '49291184', smugmug_album_key: 'f52QRp', album_url: "http://snapshowmagic.smugmug.com/Events/Wedgewood-Indian-Hills-Bridal/")
		Gallery.create!(title: "Wedgewood at Glen Ivy Bridal Show",			event_date: Date.new(2015,4,22),	smugmug_album_id: '49207954', smugmug_album_key: 'z9rFMg', album_url: "http://snapshowmagic.smugmug.com/Events/Wedgewood-at-Glen-Ivy/")
		Gallery.create!(title: "G1veabuckfund.org BBQ Fundraiser",			event_date: Date.new(2015,4,30),	smugmug_album_id: '48969369', smugmug_album_key: 'RDHHmV', album_url: "http://snapshowmagic.smugmug.com/Events/G1veabuckfundorg-BBQ/")
	end
end
