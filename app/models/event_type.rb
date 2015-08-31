class EventType < ActiveRecord::Base

	has_many	:events

	#..#

	belongs_to	:creator,	class_name: 'User',	foreign_key: :created_by
	belongs_to	:updater,	class_name: 'User',	foreign_key: :updated_by

	#..#

	acts_as_list

	#..#

	default_scope { order(:position) }

	#..#

	DEFAULT = self.order(:position).limit(1).first
	WEDDING = self.where(name: 'Wedding').first

end
