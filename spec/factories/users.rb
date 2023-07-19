FactoryBot.define do
  factory :user do
    name { 'John' }
    email { "john@email_provider.com" }
    password { "7860945310" }
  end
end

FactoryBot.define do
  factory :user2 do
    name { 'Pepe' }
    email { "pepe@email_provider.com" }
    password { "7860945310" }
  end
end 