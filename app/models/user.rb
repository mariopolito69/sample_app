class User < ApplicationRecord
  validates :name, presence: true
  validates :email, uniqueness: true
  validates :password, length: { minimum: 6 }
  VALID_PASSWORD_REGEX = /\d/
  validates :password, format: { with: VALID_PASSWORD_REGEX }
  has_secure_password
end
