class AddColumnToTests < ActiveRecord::Migration[6.0]
  def change
    add_column :tests, :creator_id, :integer, null: false
  end
end
