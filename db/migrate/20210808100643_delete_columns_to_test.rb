class DeleteColumnsToTest < ActiveRecord::Migration[6.0]
  def change
    remove_column :tests, :author
  end
end
