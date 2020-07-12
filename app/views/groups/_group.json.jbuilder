json.extract! group, :id, :title, :description, :address, :photo, :event_start, :rsvp_send_before, :created_at, :updated_at
json.url group_url(group, format: :json)
