FactoryBot.define do
  factory :friendship do
    status { :requested }
    user
    friend { user }
  end
end
