json.array!(@settings) do |setting|
  json.extract! setting, :id, :id, :nama_aplikasi, :email_default, :alamat, :default_password, :zopim, :site_status
  json.url setting_url(setting, format: :json)
end
