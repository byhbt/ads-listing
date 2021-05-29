# frozen_string_literal: true

class ListingCategory < ApplicationRecord
  acts_as_paranoid

  extend FriendlyId

  friendly_id :name, use: :slugged

  # Associations
  has_many :listings, dependent: :destroy
end
