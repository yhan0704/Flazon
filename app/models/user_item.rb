class UserItem < ApplicationRecord
  belongs_to :user
  belongs_to :item
end

def find_all_name
  UserItem.all.each do |user|
    if user.id == self.user_id
    end
  end
end