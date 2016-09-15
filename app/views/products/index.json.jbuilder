json.array!(@products) do |product|
  json.extract! product, :id, :id, :name, :harga, :keterangan, :is_active, :views, :user_id, :picture_id, :slug
  json.url product_url(product, format: :json)
end
