class AddTwitterIdToTweets < ActiveRecord::Migration
  def change
    add_column :tweets, :twitter_id, :integer
    add_column :tweets, :tweeted_on, :datetime
  end
end
