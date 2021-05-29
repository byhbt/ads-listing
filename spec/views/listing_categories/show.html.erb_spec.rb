# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'listing_categories/show', type: :view do
  before(:each) do
    @listing_category = assign(:listing_category, ListingCategory.create!(
                                                    name: 'Name',
                                                    description: 'MyText',
                                                    display_order: 2
                                                  ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
  end
end
