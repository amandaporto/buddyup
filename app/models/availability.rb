class Availability < ActiveRecord::Base
  belongs_to :user

  enum day: { Mon: 0, Tue: 1, Wed: 2, Thu: 3, Fri: 4, Sat: 5, Sun: 6 }

  enum time: { Morning: 0, Afternoon: 1, Evening: 2 }
end
