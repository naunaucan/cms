json.array!(@conversations) do |conversation|
  json.extract! conversation, :id, :id, :ticket_id, :avatar, :numbering, :user_id, :message, :is_read
  json.url conversation_url(conversation, format: :json)
end
