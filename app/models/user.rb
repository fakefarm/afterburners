class User < ActiveRecord::Base
  has_secure_password
  has_many :mixes
  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true, on: :create, case_sensitive: false
end
