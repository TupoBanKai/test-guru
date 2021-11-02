class RenameNameToUsers < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :name, :email
  end
end
