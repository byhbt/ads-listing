require 'rails_helper'

RSpec.describe "listings/new", type: :view do
  before(:each) do
    assign(:listing, Listing.new(
      title: "MyString",
      content: "MyText",
      user: "",
      listing_category: ""
    ))
  end

  it "renders new listing form" do
    render

    assert_select "form[action=?][method=?]", listings_path, "post" do

      assert_select "input[name=?]", "listing[title]"

      assert_select "textarea[name=?]", "listing[content]"

      assert_select "input[name=?]", "listing[user]"

      assert_select "input[name=?]", "listing[listing_category]"
    end
  end
end
