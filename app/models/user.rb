class User < ApplicationRecord
  def tests_by_level(level)
    UserTest.joins('JOIN tests ON tests.id = user_tests.test_id').
      where('user_tests.user_id = ?', self.id).where('level = ?', level)
  end
end
