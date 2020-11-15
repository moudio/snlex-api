class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
  VALID_PHONE_REGEX = /\d[0-9]\)*\z/
  has_secure_password
  validates :username, presence: true, uniqueness: {case_sensitive: false},  length: {in: 4..10}
  validates :email, presence: true, uniqueness: {case_sensitive: false}, format: {with: VALID_EMAIL_REGEX}
  validates :telephone, presence: true, uniqueness: true
  has_many :products

end
