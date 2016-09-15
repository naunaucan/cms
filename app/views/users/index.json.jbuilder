json.array!(@users) do |user|
  json.extract! user, :id, :id, :username, :email, :encrypt_password, :salt, :role_id, :is_active, :token
  json.url user_url(user, format: :json)
end
