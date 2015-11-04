class User < ActiveRecord::Base
  has_many :activities
  has_many :availabilities
  geocoded_by :zip

  after_validation :geocode, if: -> (user) { user.zip.present? && user.zip_changed? }

  def self.with_sport(sport)
    User.joins(:activities).where("activities.sport": Activity.sports[sport])
  end

  def gps_location
    [self.latitude, self.longitude]
  end
  
  def self.from_omniauth(auth)
    user = where(provider: auth['provider'], uid: auth['uid']).first_or_create

    user.name         = auth.info.name
    user.nickname     = auth.info.nickname
    user.image        = auth.info.image
    user.access_token = auth.credentials.token
    user.save!

    return user
  end

end
