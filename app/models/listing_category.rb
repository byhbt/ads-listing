class ListingCategory < ApplicationRecord
  acts_as_paranoid

  # Associations
  has_many :listings, dependent: :destroy
end
