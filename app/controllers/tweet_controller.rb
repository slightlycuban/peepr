class TweetController < ApplicationController
  before_filter :require_login

  def all
    @tweets = current_user.tweets.paginate(page: params[:page])
  end

  def create
  end

  def view
  end

  def fetch
    opts = current_user.tweets.any? ? {since_id: current_user.tweets.first} : {}
    opts[:count] = 20

    tweets_count = current_user.client.user.tweets_count

    while current_user.tweets.count < tweets_count
      tweets = current_user.client.user_timeline(opts)
      opts[:max_id] = tweets.last.id

      tweets.each do |t|
        peep = current_user.tweets.build({ content: t.text, twitter_id: t.id, tweeted_on: t.created_at })
        peep.save
      end
    end

    redirect_to all_url, notice: "Tweets upated"
  end

  private

  def require_login
    redirect_to root_url, notice: "Please sign in first" if current_user.nil?
  end
end
