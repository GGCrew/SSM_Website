class AddPhotoMediumData < ActiveRecord::Migration

  def up
		Admin::PhotoMedium.create!(name: 'DVD')
		Admin::PhotoMedium.create!(name: 'USB Flash Drive')

		Event.where(photo_medium_id: nil).update_all(photo_medium_id: Admin::PhotoMedium.first.id)
  end

	def down
		Admin::PhotoMedium.destroy_all
	end

end
