json.array!(@provinsis) do |provinsi|
  json.extract! provinsi, :id, :id, :name, :is_active
  json.url provinsi_url(provinsi, format: :json)
end
