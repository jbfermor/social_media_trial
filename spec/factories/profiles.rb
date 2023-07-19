FactoryBot.define do
  factory :profile do
    name {"name"}
    surname1 {"surname1"}
    surname2 {"surname1"}
    address {"address"}
    city {"city"}
    province {"province"}
    country {"country"}
    postal_code {"postal_code"}
    phone {"phone"}
    user_id { 1 }
  end
end 