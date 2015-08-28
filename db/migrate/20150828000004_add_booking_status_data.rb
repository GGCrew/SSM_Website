class AddBookingStatusData < ActiveRecord::Migration

  def up
		Admin::BookingStatus.create!(name: 'Tentative')
		Admin::BookingStatus.create!(name: 'Booked')
		Admin::BookingStatus.create!(name: 'Complete')
		Admin::BookingStatus.create!(name: 'Canceled')

		Event.where(booking_status_id: nil).update_all(booking_status_id: Admin::BookingStatus.first.id)
  end

	def down
		Admin::BookingStatus.destroy_all
	end

end
