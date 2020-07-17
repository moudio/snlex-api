class User < ApplicationRecord
  has_secure_password
  validates :username, presence: true, uniqueness: true, length: {in: 4..15}
  validates :email, presence: true, uniqueness: true
end
