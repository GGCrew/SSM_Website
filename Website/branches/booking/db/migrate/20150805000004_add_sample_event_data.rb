class AddSampleEventData < ActiveRecord::Migration

	def up
		Event.create!(start: '2015-08-08T14:00:00-07:00', end: '2015-08-08T20:00:00-07:00', timezone: 'Pacific Time (US & Canada)', event_type_id: 1,	event_name: 'Test')
		Event.create!(start: '2015-08-08T18:00:00-07:00', end: '2015-08-08T22:00:00-07:00', timezone: 'Pacific Time (US & Canada)', event_type_id: 1,	event_name: 'Test 2', placeholder_times: true)
	end

	def down
		Event.destroy_all
	end
end
