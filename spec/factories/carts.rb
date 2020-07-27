FactoryBot.define do
  factory :cart do
    user_id {Faker::Number.between(from = 1, to = 5000)}
    product_id {Faker::Number.between(from = 1, to = 5000)}
  end
end
