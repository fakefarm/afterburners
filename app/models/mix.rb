class Mix < ActiveRecord::Base
  validates :spotify_url, :body, :title, presence: true
  belongs_to :user
  has_many :comments, as: :commentable
  has_many :votes, as: :voteable
end
