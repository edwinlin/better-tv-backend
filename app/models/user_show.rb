class UserShow < ApplicationRecord
  belongs_to :tvshow
  belongs_to :user
end
