class Item < ApplicationRecord
  has_many :user_items, dependent: :destroy
  has_many :users, through: :user_items
  has_many :ratings, dependent: :destroy

  belongs_to :category
end
