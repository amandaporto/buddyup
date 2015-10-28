Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET'],
           scope: 'email, public_profile', info_fields:'email, name'

  provider :twitter, ENV["TWITTER_KEY"], ENV["TWITTER_SECRET"],
           scope: 'name'
end
