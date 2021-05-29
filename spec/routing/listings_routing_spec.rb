# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ListingsController, type: :routing do
  describe 'routing' do
    it 'routes to #show' do
      expect(get: '/listings/1').to route_to('listings#show', id: '1')
    end
  end
end
