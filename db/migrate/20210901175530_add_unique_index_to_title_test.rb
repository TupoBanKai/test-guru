class AddUniqueIndexToTitleTest < ActiveRecord::Migration[6.0]
  def up
    add_index :tests, :title, unique: true
  end

  def down
    remove_index :tests, :title
  end
end
