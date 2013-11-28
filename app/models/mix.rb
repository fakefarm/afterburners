class Mix < ActiveRecord::Base
  validates :spotify_url, :body, :title, presence: true
  belongs_to :user
  belongs_to :category
  has_many :comments, as: :commentable
  has_many :votes, as: :voteable

  before_save :generate_slug

  counter_culture :user

  def to_param
    self.slug
  end

  def generate_slug
    self.slug = self.title.gsub(' ', '-')
  end
end
