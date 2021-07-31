class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column(:answers, :correct, :body)
    rename_column(:answers, :flag, :correct)
  end
end
