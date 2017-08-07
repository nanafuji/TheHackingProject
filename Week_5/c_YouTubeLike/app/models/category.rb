class Category < ApplicationRecord
  has_many :videos
  has_many :inscriptions
  has_many :users, through: :inscriptions
end
