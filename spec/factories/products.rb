FactoryBot.define do
  factory :product do
  sequence(:name) do |n|
      "product-#{n}"
    end
    description {Faker::Lorem.paragraph}
    category {Faker::Lorem.word}
  end

end
