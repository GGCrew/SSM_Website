json.array!(@admin_events) do |admin_event|
  json.extract! admin_event, :id, :client_id, :event_type_id, :start, :end, :placeholder_times, :location_id, :booking_status_id, :contract_status_id, :payment_status_id, :bride_first_name, :bride_last_name, :groom_first_name, :groom_last_name, :event_name, :number_of_cameras, :photo_media_id
  json.url admin_event_url(admin_event, format: :json)
end
