class Vote < ActiveRecord::Base

  belongs_to :user
  belongs_to :voteable, polymorphic: true

  counter_culture :user

  validates_uniqueness_of :user_id, scope: :voteable
end
