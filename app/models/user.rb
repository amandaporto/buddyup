class User < ActiveRecord::Base
  has_many :activities
  has_many :availabilities

  def self.with_sport(sport)
    # todo: once we how to link sports and users
    User.all
  end

  def self.from_omniauth(auth)
    user = where(provider: auth['provider'], uid: auth['uid']).first_or_create

    user.name         = auth.info.name
    user.nickname     = auth.info.nickname
    user.access_token = auth.credentials.token
    user.save!

    return user
  end


end
