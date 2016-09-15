json.array!(@pages) do |page|
  json.extract! page, :id, :id, :title, :content, :user_id, :views, :is_active
  json.url page_url(page, format: :json)
end
