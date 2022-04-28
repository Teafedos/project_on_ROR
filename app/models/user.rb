class User < ApplicationRecord

  validates :login, :secretpass, :mail, :nickname, presence: true
  validates :login, length: { in: 3..20 }
  validates :secretpass, length: { in: 6..70 }
  validates :nickname, :mail, uniqueness: true
end
