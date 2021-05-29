# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ListingCategoriesController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/listing_categories').to route_to('listing_categories#index')
    end

    it 'routes to #show' do
      expect(get: '/listing_categories/1').to route_to('listing_categories#show', id: '1')
    end
  end
end
