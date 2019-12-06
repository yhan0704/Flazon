class Item < ApplicationRecord
  has_many :user_items, dependent: :destroy
  has_many :users, through: :user_items
  has_many :ratings, dependent: :destroy

  belongs_to :category

  validates :name, presence: true, uniqueness: true
  validates :price, presence: true
  validates :category_id, presence: true

  def self.search(search)
    where("name LIKE ?", "%#{search}%")
  end


end
