class MyPlacesList < ActiveRecord::Base
  belongs_to :user
  has_many :places
end
