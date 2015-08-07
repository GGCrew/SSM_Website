class Admin::Note < ActiveRecord::Base

	belongs_to	:noteable,	polymorphic: true
	belongs_to	:creator,	class_name: 'User',	foreign_key: :created_by
	belongs_to	:updater,	class_name: 'User',	foreign_key: :updated_by

	#..#

	default_scope	{ order('created_at DESC').order('id DESC') }

end
