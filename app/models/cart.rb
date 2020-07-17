class Cart < ApplicationRecord
  belong_to :user
  belong_to :product
end
