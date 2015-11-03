class AddSkillLevelToActivities < ActiveRecord::Migration
  def change
    add_column :activities, :skill_levels, :integer, default: 0, index: true
  end
end
