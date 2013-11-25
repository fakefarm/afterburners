class User < ActiveRecord::Base
  before_save { self.username = username.downcase }
  has_secure_password

  has_many  :mixes, dependent: :destroy
  has_many  :comments, as: :commentable
  has_many  :votes

  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: {case_sensitive: false}
  validates :password, presence: true, on: :create, case_sensitive: false

  def to_param
    "#{id} #{username}".parameterize
  end
end
