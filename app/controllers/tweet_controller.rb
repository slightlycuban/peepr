class TweetController < ApplicationController
  before_filter :require_login

  def all
    @tweets = current_user.tweets
  end

  def create
  end

  def view
  end

  def fetch
  end

  private

  def require_login
    redirect_to root_url, notice: "Please sign in first" if current_user.nil?
  end
end
