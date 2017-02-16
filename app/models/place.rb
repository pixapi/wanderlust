class Place < ActiveRecord::Base
  belongs_to :continent
  belongs_to :category
  has_many :users, through: :my_places_lists
end
