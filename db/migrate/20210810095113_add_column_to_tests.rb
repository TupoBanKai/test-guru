# frozen_string_literal: true

class AddColumnToTests < ActiveRecord::Migration[6.0]
  def change
    add_column :tests, :creator, :integer, foreign_key: true, null: false, idex: true
  end
end
