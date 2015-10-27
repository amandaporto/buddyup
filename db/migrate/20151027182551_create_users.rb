class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :provider
      t.string :uid
      t.string :nickname
      t.string :access_token
      t.integer :age
      t.string :gender
      t.string :address

      t.timestamps null: false
    end
  end
end
