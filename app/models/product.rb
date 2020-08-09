class Product < ApplicationRecord
  has_one_attached :picture
  validates :name, presence: true
  validates :description, presence: true
  validates :category, presence: true
  validates :price, presence: true
  has_many :purchased
  has_many :users, through: :purchased

  # has_many :users, through: :purchased, dependent: :destroy
end
