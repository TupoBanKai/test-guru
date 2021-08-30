# frozen_string_literal: true

class Category < ApplicationRecord
  has_many :tests

  scope :sort_category_names, -> { where(title: :asc) }

  validates: :title, presence: true
end
