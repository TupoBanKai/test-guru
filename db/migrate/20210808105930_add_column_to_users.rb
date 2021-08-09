class AddColumnToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :created_test, :integer
  end
end
