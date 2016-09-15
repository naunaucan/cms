json.array!(@profiles) do |profile|
  json.extract! profile, :id, :id, :company_name, :country, :address, :description, :category_id, :profile_img, :is_active, :user_id, :provinsi_id, :kota_id, :owner, :slug, :telp, :views
  json.url profile_url(profile, format: :json)
end
