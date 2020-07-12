json.extract! group_invite, :id, :sender_id, :receiver_id, :accecpted, :group_id, :created_at, :updated_at
json.url group_invite_url(group_invite, format: :json)
