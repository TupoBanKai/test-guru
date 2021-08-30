class Answer < ApplicationRecord
  belongs_to :question

  scope :correct, -> { where(correct: true) }

  validate: :max_answers

  def max_answers(answers)
    errors.add(answers) if answers,count > 4
  end
end
