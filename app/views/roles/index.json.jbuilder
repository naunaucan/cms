json.array!(@roles) do |role|
  json.extract! role, :id, :id, :name, :is_active, :set_default
  json.url role_url(role, format: :json)
end
