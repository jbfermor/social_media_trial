FactoryBot.define do
  factory :post do
    title { "MyString" }
    text { "MyText" }
    user
  end
end
