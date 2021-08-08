class AddColumnToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :test, :integer, foreign_key: true, null: false
  end
end
