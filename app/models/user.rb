class User < ApplicationRecord
  has_secure_password
  validates :username, presence: true, uniqueness: {case_sensitive: false},  length: {in: 4..15}
  validates :email, presence: true, uniqueness: {case_sensitive: false}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze

end
