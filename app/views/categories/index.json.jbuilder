json.array!(@categories) do |category|
  json.extract! category, :id, :id, :name, :is_active, :slug
  json.url category_url(category, format: :json)
end
