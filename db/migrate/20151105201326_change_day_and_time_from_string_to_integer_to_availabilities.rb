class ChangeDayAndTimeFromStringToIntegerToAvailabilities < ActiveRecord::Migration
  def change
    change_column :availabilities, :day, :integer
    change_column :availabilities, :time, :integer
  end
end
