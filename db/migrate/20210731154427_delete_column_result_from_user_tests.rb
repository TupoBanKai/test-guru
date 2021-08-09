class DeleteColumnResultFromUserTests < ActiveRecord::Migration[6.0]
  def up
    remove_column :user_tests, :result
  end

  def down
    add_column :user_tests, :result, :integer
  end
end
