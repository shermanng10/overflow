class Vote < ActiveRecord::Base
  belongs_to :votable, polymorphic: true
  belongs_to :users

  validates :votable, presence: true
  validates :is_upvote, presence: true
  validates :user_id, presence: true
end
