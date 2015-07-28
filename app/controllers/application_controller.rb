class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

	before_action	:set_userstamp
	before_action	:set_selected_menu_item	

	#..#

	private

  def set_userstamp
    User.current_user = User.find(session[:user_id])
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
