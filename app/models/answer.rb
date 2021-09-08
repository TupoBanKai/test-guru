class Answer < ApplicationRecord
  belongs_to :question

  scope :correct, -> { where(correct: true) }

  validate :max_answers

  def max_answers
    errors.add(:base) if question.answers.count >= 4
  end
end
