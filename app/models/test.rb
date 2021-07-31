class Test < ApplicationRecord
  has_many :questions
  has_many :user, through: :user_tests
  has_one :author
  belongs_to :category
  belongs_to :author

  def self.category_tests(category_name)
    Test.joins('JOIN categories ON tests.category_id = categories.id').
      where('categories.title  = ?', category_name).order(title: :desc).pluck(:title)
  end
end
