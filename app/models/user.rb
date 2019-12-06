class User < ApplicationRecord
    has_many :user_items, dependent: :destroy
    has_many :items, through: :user_items
    has_many :ratings, dependent: :destroy

    validates :username, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true

    has_secure_password

    def self.search(search)
        where("name LIKE ?", "%#{search}%")
    end

end
