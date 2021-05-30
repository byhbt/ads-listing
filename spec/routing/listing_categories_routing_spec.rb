# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ListingCategoriesController, type: :routing do
  describe 'routing' do
    it 'routes to #show' do
      expect(get: '/category/1').to route_to('listing_categories#show', id: '1')
    end
  end
end
