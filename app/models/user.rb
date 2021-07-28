class User < ApplicationRecord
  def test_level(test_lvl)
    Test.where('level = ?', test_lvl).where('user_id = ?', self.id)
  end
end
