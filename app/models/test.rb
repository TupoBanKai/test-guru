class Test < ApplicationRecord
  has_many :questions
  has_many :users, through: :user_tests
  belongs_to :category
  belongs_to :user

  def self.category_tests(category_name)
    Test.joins('JOIN categories ON tests.category_id = categories.id').
      where('categories.title  = ?', category_name).order(title: :desc).pluck(:title)
  end
end
