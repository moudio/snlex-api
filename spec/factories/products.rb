FactoryBot.define do
  factory :product do
  sequence(:name) do |n|
      "product-{n}"
    end
  end
end
