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
end
