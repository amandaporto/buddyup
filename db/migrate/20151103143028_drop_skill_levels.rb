class DropSkillLevels < ActiveRecord::Migration
  def change
    drop_table :skill_levels do |t|
          t.integer :user_id
          t.integer :activity_id
          t.string :level
          t.timestamps
        end
  end
end
