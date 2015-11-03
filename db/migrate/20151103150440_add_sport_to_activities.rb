class AddSportToActivities < ActiveRecord::Migration
  def change
    add_column :activities, :sport, :integer, default: 0, index: true
  end
end
