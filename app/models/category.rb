# frozen_string_literal: true

class Category < ApplicationRecord
  has_many :tests

  scope :names, -> { where(title: :asc) }

  validate: :title, presence: true
end
