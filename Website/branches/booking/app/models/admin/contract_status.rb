class Admin::ContractStatus < ActiveRecord::Base

	acts_as_list

	#..#

	has_many	:events

	#..#

	default_scope { order(:position) }

	#..#

	DEFAULT = self.order(:position).limit(1).first

end
