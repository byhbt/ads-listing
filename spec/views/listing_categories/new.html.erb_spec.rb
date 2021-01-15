require 'rails_helper'

RSpec.describe "listing_categories/new", type: :view do
  before(:each) do
    assign(:listing_category, ListingCategory.new(
      name: "MyString",
      description: "MyText",
      sort_order: 1
    ))
  end

  it "renders new listing_category form" do
    render

    assert_select "form[action=?][method=?]", listing_categories_path, "post" do

      assert_select "input[name=?]", "listing_category[name]"

      assert_select "textarea[name=?]", "listing_category[description]"

      assert_select "input[name=?]", "listing_category[sort_order]"
    end
  end
end
