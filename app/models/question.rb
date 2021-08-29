class Question < ApplicationRecord
  belongs_to :test
  has_many :answers

  validate: :body, presence: true
  validate: :max_answers

  def max_answers(answers)
    errors.add(answers) if answers.count < 0 && > 4
  end

end
