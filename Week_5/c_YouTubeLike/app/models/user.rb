class User < ApplicationRecord
  has_many :videos
  has_many :inscriptions
  has_many :categories, through: :inscriptions
end
