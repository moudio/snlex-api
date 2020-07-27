class Purchased < ApplicationRecord
  belongs_to :user
  belongs_to :product
end
