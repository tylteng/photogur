class User < ApplicationRecord
  has_secure_password
  has_many :pictures
  validates :email, :password_digest, presence: true
end
