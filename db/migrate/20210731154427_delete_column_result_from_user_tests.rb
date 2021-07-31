class DeleteColumnResultFromUserTests < ActiveRecord::Migration[6.0]
  def change
    revove_column :user_tests, :result
  end
end
