class AddUserstampsToExistingModels < ActiveRecord::Migration

	def up
		add_column	'galleries',		'created_by',	:integer
		add_column	'galleries',		'updated_by',	:integer
		add_column	'testimonials',	'created_by',	:integer
		add_column	'testimonials',	'updated_by',	:integer

		Gallery.reset_column_information
		Testimonial.reset_column_information
	end

	def down
		remove_column	'galleries',		'created_by'
		remove_column	'galleries',		'updated_by'
		remove_column	'testimonials',	'created_by'
		remove_column	'testimonials',	'updated_by'

		Gallery.reset_column_information
		Testimonial.reset_column_information
	end

end
