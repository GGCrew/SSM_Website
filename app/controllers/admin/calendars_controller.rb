class Admin::CalendarsController < ApplicationController

	def show
		respond_to do |format|
			format.html {}
			format.json { 
				# params[:start]
				# params[:end]
				if params[:start] && params[:end]
					events = Event.between(Date.parse(params[:start]), Date.parse(params[:end]))
				else
					events = Event.between(Date.today - 2.months, Date.today + 2.months)
				end
				@events = events.map{ |i| {
					id: "event_#{i.id}",
					class_name: 'event',
					title: i.event_name,
					start: i.start.in_time_zone(i.timezone),
					end: i.end.in_time_zone(i.timezone),
					timezone: i.start.in_time_zone(i.timezone).to_s(:timezone_abbreviation)
				}}
			}
		end
	end

end
