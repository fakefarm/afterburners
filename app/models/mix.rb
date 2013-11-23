class Mix < ActiveRecord::Base
  validates :spotify_url, :body, :title, presence: true
  belongs_to :user
  belongs_to :category
  has_many :comments, as: :commentable
  has_many :votes, as: :voteable


  def to_param
    "#{id} #{title}".parameterize
  end
end
