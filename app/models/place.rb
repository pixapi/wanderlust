class Place < ActiveRecord::Base
  validates :name, :country, :experience, :category_id, :continent_id, presence: true
  validates :name, uniqueness: true
  belongs_to :continent
  belongs_to :category
  has_many :users, through: :my_places_lists
end
