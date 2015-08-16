json.array!(@admin_note_contacts) do |admin_note_contact|
  json.extract! admin_note_contact, :id, :admin_note_id, :contact_id
  json.url admin_note_contact_url(admin_note_contact, format: :json)
end
