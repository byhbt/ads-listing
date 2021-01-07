require 'rails_helper'

RSpec.describe "listing_categories/edit", type: :view do
  before(:each) do
    @listing_category = assign(:listing_category, ListingCategory.create!(
      name: "MyString",
      description: "MyText",
      sort_order: 1
    ))
  end

  it "renders the edit listing_category form" do
    render

    assert_select "form[action=?][method=?]", listing_category_path(@listing_category), "post" do

      assert_select "input[name=?]", "listing_category[name]"

      assert_select "textarea[name=?]", "listing_category[description]"

      assert_select "input[name=?]", "listing_category[sort_order]"
    end
  end
end
