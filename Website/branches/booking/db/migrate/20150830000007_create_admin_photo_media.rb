class CreateAdminPhotoMedia < ActiveRecord::Migration
  def change
    create_table :admin_photo_media do |t|
      t.string :name
      t.integer :position

      t.timestamps null: false
			t.userstamps
    end
  end
end
