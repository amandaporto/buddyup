class ChangeSkillsLevelsToSkillLevel < ActiveRecord::Migration
  def change
    rename_column :activities, :skill_levels, :skill_level
  end
end
