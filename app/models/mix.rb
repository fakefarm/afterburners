class Mix < ActiveRecord::Base
  validates :spotify_url, :body, :title, presence: true
end
