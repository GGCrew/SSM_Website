class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

	helper_method :current_user

	before_action :set_selected_menu_item	

	private

	def current_user
		@current_user ||= User.find(session[:user_id]) if session[:user_id]
	end

	def set_selected_menu_item
		@selected_menu_item = case params[:controller]
			when 'site'
				params[:action]
					
			else
				params[:controller]
		end
	end
end
