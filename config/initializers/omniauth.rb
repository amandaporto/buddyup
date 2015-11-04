Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET'],
           scope: 'email, public_profile', info_fields:'email, name', :image_size => 'square'

  provider :twitter, ENV["TWITTER_KEY"], ENV["TWITTER_SECRET"],
           scope: 'name', :image_size => 'original'
end
