class Event < ActiveRecord::Base

	scope	:between, lambda {
		|start_date, end_date|
		where([
			'start < :end_date AND end >=:start_date',
			{
				start_date: (start_date - 1.day),
				end_date: (end_date + 1.day)
			}
		]).order(:start, :end, :event_name)
	}

end
