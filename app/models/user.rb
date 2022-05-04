class User < ApplicationRecord
  has_secure_password

  validates :login, :password_digest, :email, :name, presence: true
  validates :login, length: { in: 3..20 }
  validates :password_digest, length: { in: 8..70 }
  validates :login, :email, uniqueness: true
end
