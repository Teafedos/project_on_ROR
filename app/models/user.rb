class User < ApplicationRecord
  has_secure_password

  validates :password_digest, :email, :name, presence: true
  validates :password, length: { minimum: 6 }, if: -> { new_record? || !password.nil? }
  validates :email, uniqueness: true
end
