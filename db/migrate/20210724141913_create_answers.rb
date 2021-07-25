class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :answers do |t|
      t.boolean :correct, default: true, null: false
      t.references :question_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end