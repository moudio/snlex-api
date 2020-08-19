FactoryBot.define do
  factory :product do
  sequence(:name) do |n|
      "product-#{n}"
    end
    description {Faker::Lorem.paragraph}
    category {Faker::Lorem.word}
    price {Faker::Number.between(from = 1.00, to = 5000.00)}
    picture { Rack::Test::UploadedFile.new("#{Rails.root}/app/pictures/test_picture.jpg", 'image/jpg') }
    
  end

end
