class Admin::BookingStatus < ActiveRecord::Base

	acts_as_list

	#..#

	has_many	:events

end
