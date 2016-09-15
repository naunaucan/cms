json.array!(@blogs) do |blog|
  json.extract! blog, :id, :id, :title, :isi, :is_active, :views, :slug, :user_id, :tags
  json.url blog_url(blog, format: :json)
end
