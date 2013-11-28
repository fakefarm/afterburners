class User < ActiveRecord::Base
  before_save { self.username = username.downcase }
  before_save :generate_slug
  has_secure_password

  has_many  :mixes, dependent: :destroy
  has_many  :comments, as: :commentable
  has_many  :votes

  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true, on: :create, case_sensitive: false

  def admin?
    self.role == 'admin'
  end

  def to_param
    self.slug
  end

  def generate_slug
    self.slug = self.username.gsub(' ', '-')
  end
end
