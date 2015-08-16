class AddCommunicationTypeData < ActiveRecord::Migration
  def up
		types = [
			{name: 'Mail',			subtype_names: ['Mailing Address', 'Street Address']},
			{name: 'Phone',			subtype_names: ['Home Phone', 'Cell Phone', 'Work Phone']},
			{name: 'Email',			subtype_names: ['Email']},
			{name: 'FAX',				subtype_names: ['FAX']},
			{name: 'In Person',	subtype_names: ['In Person']}
		]

		for type in types
			communication_type = Admin::CommunicationType.create!(name: type[:name])
			for subtype_name in type[:subtype_names]
				Admin::CommunicationSubType.create!(name: subtype_name, communication_type_id: communication_type.id)
			end
		end
  end

	def down
		Admin::CommunicationSubType.destroy_all
		Admin::CommunicationType.destroy_all
	end
end
