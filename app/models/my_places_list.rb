class MyPlacesList < ActiveRecord::Base
  validates :user_id, :place_id, :visited, presence: true
  belongs_to :user
  belongs_to :place
end
