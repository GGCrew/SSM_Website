class Gallery < ActiveRecord::Base

	def self.template
		private_column_names = ['id', 'created_at', 'updated_at']
		public_column_names = self.column_names - private_column_names
		max_index = public_column_names.count - 1

		public_column_names.each_with_index do |name, index|
			#index == 0 ? p("gallery = Gallery.new(\n\t#{name}: '',") : p("\t#{name}: '',")
			p('gallery = Gallery.new(') if index == 0
			p("#{name}: ''#{"," if index < max_index}")
			p(')') if index == max_index
		end
	end

end
