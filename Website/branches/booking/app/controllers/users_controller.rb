class UsersController < ApplicationController

	#skip_before_action	:set_userstamp,	only: [:new, :create]

	#..#

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		@user.active = false
		if @user.save
			redirect_to root_url, :notice => "Signed up!"
		else
			render "new"
		end
	end


	private

	def user_params
		params[:user].permit(:name, :login, :password, :password_confirmation)
	end

end
