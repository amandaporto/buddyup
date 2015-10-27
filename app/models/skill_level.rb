class SkillLevel < ActiveRecord::Base
  belongs_to :User
  belongs_to :Activity
end
