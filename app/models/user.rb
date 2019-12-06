class User < ApplicationRecord
    has_secure_password
    
    has_many :user_items, dependent: :destroy
    has_many :items, through: :user_items
    has_many :ratings, dependent: :destroy

    validates :username, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true

  
end
