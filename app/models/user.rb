class User < ApplicationRecord
  def tests_by_level(level)
    Test.joins('JOIN user_tests ON user_tests.id = tests.id').
      where('user_tests.user_id = ?', self.id).where('level = ?', level)
  end
end
