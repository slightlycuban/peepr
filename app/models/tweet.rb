class Tweet < ActiveRecord::Base
  attr_accessible :content, :tweeted_on, :twitter_id
  belongs_to :user

  validates :user_id, presence: true
  validates :content, length: { maximum: 140 }

  default_scope order: 'tweets.tweeted_on DESC'
end
