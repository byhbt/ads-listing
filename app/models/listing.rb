# frozen_string_literal: true

class Listing < ApplicationRecord
  acts_as_paranoid

  # Validations
  validates :title, :content, presence: true

  # Associations
  belongs_to :user
  belongs_to :listing_category
end
