class ChangeAddresssToZip < ActiveRecord::Migration
  def change
    rename_column :users, :address, :zip

  end
end
