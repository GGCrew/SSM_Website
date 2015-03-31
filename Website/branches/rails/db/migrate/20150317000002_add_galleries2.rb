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
	end
end
