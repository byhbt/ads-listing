class Listing < ApplicationRecord
  acts_as_paranoid

  # Associations
  belongs_to :user
  belongs_to :listing_category
end
