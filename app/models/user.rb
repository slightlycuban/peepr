class User < ActiveRecord::Base
  attr_accessible :name, :provider, :uid

  def self.create_from_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["nickname"]
      user.oauth_token = auth["extra"]["access_token"].consumer.key
      user.oauth_secret = auth["extra"]["access_token"].consumer.secret
    end
  end
end
