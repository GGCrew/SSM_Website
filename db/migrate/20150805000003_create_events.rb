class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :client_id
      t.integer :event_type_id
      t.datetime :start
      t.datetime :end
			t.string :timezone
      t.boolean :placeholder_times
      t.integer :location_id
      t.integer :booking_status_id
      t.integer :contract_status_id
      t.integer :payment_status_id
      t.string :bride_first_name
      t.string :bride_last_name
      t.string :groom_first_name
      t.string :groom_last_name
      t.string :event_name
      t.integer :number_of_cameras
      t.integer :photo_medium_id

      t.timestamps null: false
			t.userstamps
    end
  end
end
