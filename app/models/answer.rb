class Answer < ApplicationRecord
  belongs_to :question

  scope :correct, -> { where(correct: true) }

  validate :max_answers

  def max_answers
    errors.add(:base) if Answer.where(question_id: question_id).count >= 4
  end
end
