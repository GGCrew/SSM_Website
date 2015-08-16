class AddCommunicationTypeData < ActiveRecord::Migration
	types = [
		{name: 'Mail', subtype_names: ['Mailing Address', 'Street Address']},
		{name: 'Phone', subtype_name: ['Home Phone', 'Cell Phone', 'Work Phone']},
		{name: 'Email', subtype_name: ['Email']},
		{name: 'FAX', subtype_name: ['FAX']},
		{name: 'In Person', subtype_name: ['In Person']}
	]
	
  def up
		for type in types
			communication_type = CommunicationType.create!(name: type[:name])
			for subtype_name in type[:subtype_names]
				CommunicationSubType.create!(name: subtype_name, communication_type_id: communication_type.id)
			end
		end
  end

	def down
		CommunicationSubType.destroy_all
		CommunicationType.destroy_all
	end
end
