class Client < ApplicationRecord
    belongs_to :user
    
    validates :name, :phone, :email, presence: true
end
