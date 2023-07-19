json.extract! profile, :id, :name, :surname1, :surname2, :address, :city, :province, :country, :postal_code, :phone, :user_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)
