class Admin::CalendarsController < ApplicationController

	#layout	'admin'

	#..#

	def show
		respond_to do |format|
			format.html {}
			format.json { @events = [{title: 'test', start: '2015-08-01'}] }
		end
	end

end
