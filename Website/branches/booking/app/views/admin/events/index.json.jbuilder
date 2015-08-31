json.array!(@admin_events) do |admin_event|
  json.extract! admin_event, :id, :client_id, :placeholder_times, :location_id, :bride_first_name, :bride_last_name, :groom_first_name, :groom_last_name, :event_name, :number_of_cameras, :photo_medium_id
	json.event_type admin_event.event_type.name
	json.start admin_event.start.in_time_zone(admin_event.timezone)
	json.end admin_event.end.in_time_zone(admin_event.timezone)
	json.timezone admin_event.timezone
	json.booking_status admin_event.booking_status.name
	json.contract_status admin_event.contract_status.name
	json.payment_status admin_event.payment_status.name
  json.url admin_event_url(admin_event, format: :json)
end
