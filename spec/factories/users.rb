FactoryBot.define do
  factory :user do
    sequence(:username) do |n|
      "user-#{n}"
    end
    email {Faker::Internet.email}
    password {'password'}
    password_confirmation {'password'}
  end
end
