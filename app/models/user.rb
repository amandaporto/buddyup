class User < ActiveRecord::Base
  has_many :activities
  has_many :availabilities
end
