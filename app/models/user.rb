class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
  has_secure_password
  validates :username, presence: true, uniqueness: {case_sensitive: false},  length: {in: 4..10}
  validates :email, presence: true, uniqueness: {case_sensitive: false}, format: {with: VALID_EMAIL_REGEX}
  has_many :purchases, through: :purchase
  has_many :carts
  has_many :products, through: :cart

 # has_many :cart_products, through: :cart, source: :products
end
