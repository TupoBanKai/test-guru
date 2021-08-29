# frozen_string_literal: true

class Test < ApplicationRecord
  has_many :questions
  has_many :user_tests
  has_many :users, through: :user_tests
  belongs_to :category
  belongs_to :creator, class_name: 'User', foreign_key: :creator_id

  scope :easy, -> { where(level: 0..1) }
  scope :medium, -> { where(level: 2..4) }
  scope :hard, -> { where(level: 5..Float::INFINITY) }
  scope :category_tests, -> (category_name) {
    where('JOIN categories ON tests.category_id = categories.id')
    .where('categories.title  = ?', category_name).order(title: :desc).pluck(:title)
   }

    validate: :title, presence: true, uniqueness: true
    validate: :level, presence: true, uniqueness: true
    validate: :level, :min_level

    def min_level
      errors.add(:level) if level.to_i < 0
    end



  # def self.category_tests(category_name)
  #   Test.joins('JOIN categories ON tests.category_id = categories.id')
  #       .where('categories.title  = ?', category_name).order(title: :desc).pluck(:title)
  # end
end
