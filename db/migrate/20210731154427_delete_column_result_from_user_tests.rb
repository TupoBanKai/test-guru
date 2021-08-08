class DeleteColumnResultFromUserTests < ActiveRecord::Migration[6.0]
  def up
    remove_column :user_tests, :result
  end

  def down
    add_reference :tests, :user, foreign_key: true, null: false
  end
end
