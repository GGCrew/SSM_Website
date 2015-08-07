class AddSampleEventNoteData < ActiveRecord::Migration

	def up
		for event in Event.all
			for counter in 1..event.id
				event.admin_notes.create!(note: "Test note #{counter} for event #{event.id}")
			end
		end
	end

	def down
		Admin::Note.destroy_all(noteable_type: 'Event')
	end

end
