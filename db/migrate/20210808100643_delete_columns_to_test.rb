class DeleteColumnsToTest < ActiveRecord::Migration[6.0]
  def up
    remove_column :tests, :author
  end

  def down
    add_column :tests, :author, :integer
  end
end
