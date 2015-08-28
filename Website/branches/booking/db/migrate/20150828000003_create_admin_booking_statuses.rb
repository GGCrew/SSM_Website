class CreateAdminBookingStatuses < ActiveRecord::Migration
  def change
    create_table :admin_booking_statuses do |t|
      t.string :name
      t.integer :position

      t.timestamps null: false
			t.userstamps
    end
  end
end
