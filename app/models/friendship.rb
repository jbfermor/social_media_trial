class Friendship < ApplicationRecord
  belongs_to :user
  belongs_to :friend, class_name: "User"

  enum status: {
    requested: 0,
    accepted: 1, 
    cancelled: 2
  }

end
