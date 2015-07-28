class User < ActiveRecord::Base

	# Authentication-related code from "Agile Web Development With Rails 4"

	validates	:name,	presence: true,	uniqueness: true
	validates	:login,	presence: true,	uniqueness: true

	has_secure_password

	#..#

	cattr_accessor :current_user

end
