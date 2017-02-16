class User < ActiveRecord::Base
  has_many :comments
  has_many :places, through: :my_places_lists
end
