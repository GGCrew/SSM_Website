class SessionsController < ApplicationController

	#skip_before_action	:set_userstamp

  def new
  end

	def create
		# Find the user, then attempt to authenticate the password.
		# Using "try" will call the "authenticate" method if it exists, otherwise return nil. (extra security if the method/library is missing)
		user = User.find_by({login: params[:login]}).try(:authenticate, params[:password])

		if user
			session[:user_id] = user.id
			redirect_to root_url, :notice => "Logged in!"
		else
			flash.now.alert = "Invalid login or password"
			render "new"
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to root_url, :notice => "Logged out!"
	end
end
