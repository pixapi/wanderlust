class User < ActiveRecord::Base
  has_secure_password
  validates :username, :password, presence: true
  validates :username, uniqueness: true
  has_many :comments
  has_many :my_places_lists
  has_many :places, through: :my_places_lists

  enum role: [ :default, :admin ]
end
