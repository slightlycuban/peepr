class User < ActiveRecord::Base
  has_many :tweets, dependent: :destroy

  def self.create_from_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["nickname"]
      user.oauth_token = auth.credentials.token
      user.oauth_secret = auth.credentials.secret
    end
  end

  def client
    @client ||= Twitter::REST::Client.new do |config|
      config.consumer_key = ENV["API_KEY"]
      config.consumer_secret = ENV["API_SECRET"]
      config.access_token = oauth_token
      config.access_token_secret = oauth_secret
    end
  end
end
