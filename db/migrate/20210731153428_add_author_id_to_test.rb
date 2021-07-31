class AddAuthorIdToTest < ActiveRecord::Migration[6.0]
  def change
    add_reference :tests, :author, foreign_key: true, null: false
  end
end
