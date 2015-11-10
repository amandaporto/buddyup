class User < ActiveRecord::Base
  validates :name, presence: true
  validates :street, presence: true
  validates :zip, presence: true
  validates :email, presence: true

  has_many :activities
  has_many :availabilities
  geocoded_by :street_and_zip

  after_validation :geocode_the_user

  reverse_geocoded_by :latitude, :longitude do |user, results|
    geo = results.first
    if geo
      user.city  = geo.city
      user.state = geo.state_code
    end
  end

  def street_and_zip
    "#{street}, #{zip}"
  end

  def geocode_the_user
    if zip.present? && zip_changed?
      geocode
      reverse_geocode
    end
  end

  def self.with_sport(sport)
    User.joins(:activities).where("activities.sport" => Activity.sports[sport])
  end

  def profile_complete?
    email.present? && zip.present? && activities.count > 0
  end

  def gps_location
    [self.latitude, self.longitude]
  end

  def self.from_omniauth(auth)
    user = where(provider: auth['provider'], uid: auth['uid']).first_or_create

    user.name         = auth.info.name  if user.name.blank?
    user.email        = auth.info.email if user.email.blank?
    user.nickname     = auth.info.nickname
    user.image        = auth.info.image
    user.access_token = auth.credentials.token
    user.save!(validate: false)

    return user
  end

end
