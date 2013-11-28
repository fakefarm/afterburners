class Vote < ActiveRecord::Base

  belongs_to :user
  belongs_to :voteable, polymorphic: true

  counter_culture :user

  # Ajax doesn't work when this is turned on.
  validates_uniqueness_of :user_id, scope: :voteable
end
