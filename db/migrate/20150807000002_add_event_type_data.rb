class AddEventTypeData < ActiveRecord::Migration

	def up
		EventType.create!(name: 'Wedding')
		EventType.create!(name: 'Anniversary')
		EventType.create!(name: 'Reunion')
		EventType.create!(name: 'Corporate')
		EventType.create!(name: 'Other')
	end

	def down
		EventType.destroy_all
	end

end
