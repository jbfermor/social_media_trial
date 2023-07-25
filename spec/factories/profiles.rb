FactoryBot.define do

  factory :profile do

    after(:build) do |profile|
      profile.avatar.attach(
        io: File.open(Rails.root.join('test', 'fixtures/files', 'test.jpg')),
        filename: 'test.jpg',
        content_type: 'image/jpeg'
      )
    end 

    name { "name"}
    surname1 {"surname1"}
    surname2 {"surname1"}
    address {"address"}
    city {"city"}
    province {"province"}
    country {"country"}
    postal_code {"postal_code"}
    phone {"phone"}
    user
  end
end 