class Activity < ActiveRecord::Base
  belongs_to :user
  validates :sport, uniqueness: { scope: :user_id }


  enum skill_level: { Beginner: 0, Intermediate: 1, Advanced: 2, Professional: 3 }

  enum sport: { Volleyball: 0, Soccer: 1, Biking: 2, Basketball: 3, Football: 4, Baseball: 5, Tennis: 6 }
end
