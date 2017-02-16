class Comment < ActiveRecord::Base
  validates :title, :body, :user_id, :place_id, presence: true
  belongs_to :user
end
