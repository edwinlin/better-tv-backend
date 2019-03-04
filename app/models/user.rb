class User < ApplicationRecord
  has_many :user_shows
  has_many :tvshows, through: :user_shows 
end
