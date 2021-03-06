# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'listings/show', type: :view do
  before(:each) do
    @listing = assign(:listing, Listing.create!(
                                  title: 'Title',
                                  content: 'MyText',
                                  user: '',
                                  listing_category: ''
                                ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
