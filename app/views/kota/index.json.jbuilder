json.array!(@kota) do |kotum|
  json.extract! kotum, :id, :id, :name, :provinsi_id, :is_active
  json.url kotum_url(kotum, format: :json)
end
