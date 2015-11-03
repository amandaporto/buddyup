class Activity < ActiveRecord::Base

  enum skill_level: { Beg: 0, Int: 1, Adv: 2, Pro: 3 }

  enum sport: { Volleyball: 0, Soccer: 1, Biking: 2, Basketball: 3, Football: 4, Baseball: 5, Tennis: 6 }
end
