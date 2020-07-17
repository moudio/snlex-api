class Product < ApplicationRecord
  # has_one_attached :picture
  validates :name, presence: true
  validates :description, presence: true
  validates :category, presence: true
  has_many :users, through: :cart, dependent: :true
end
