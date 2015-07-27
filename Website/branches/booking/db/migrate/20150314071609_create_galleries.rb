class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
			t.string	'title'
			t.date		'event_date'
			t.string	'album_url'
			t.string	'smugmug_album_id'
			t.string	'smugmug_album_key'

      t.timestamps null: false
    end
  end
end
