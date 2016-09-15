json.array!(@tickets) do |ticket|
  json.extract! ticket, :id, :id, :subject, :message, :is_active, :is_read, :user_id, :status, :numbering
  json.url ticket_url(ticket, format: :json)
end
