class Product < ApplicationRecord
  # has_one_attached :picture
  validates :name, presence: true
  validates :description, presence: true
  validates :category, presence: true
end
