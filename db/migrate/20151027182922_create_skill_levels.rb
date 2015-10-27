class CreateSkillLevels < ActiveRecord::Migration
  def change
    create_table :skill_levels do |t|
      t.integer :user_id
      t.integer :activity_id
      t.string :level

      t.timestamps null: false
    end
  end
end
