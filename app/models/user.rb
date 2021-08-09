class User < ApplicationRecord
  has_many :tests, through: :user_tests
  has_many :tests, :class_name => "created"

  def tests_by_level(level)
    Test.joins('JOIN user_tests ON user_tests.user_id = tests.id').
      where('user_tests.user_id = ?', self.id).where('level = ?', level)
  end
end
