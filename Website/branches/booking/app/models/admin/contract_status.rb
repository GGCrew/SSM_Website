class Admin::ContractStatus < ActiveRecord::Base

	has_many	:events

end
