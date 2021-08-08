class DeleteColumn < ActiveRecord::Migration[6.0]
  def up
    remove_column :tests, :user_id
  end

  def down
    add_column :tests, :user_id, :integer
  end
end
