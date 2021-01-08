require 'rails_helper'

RSpec.describe "listings/edit", type: :view do
  before(:each) do
    @listing = assign(:listing, Listing.create!(
      title: "MyString",
      content: "MyText",
      user: "",
      listing_category: ""
    ))
  end

  it "renders the edit listing form" do
    render

    assert_select "form[action=?][method=?]", listing_path(@listing), "post" do

      assert_select "input[name=?]", "listing[title]"

      assert_select "textarea[name=?]", "listing[content]"

      assert_select "input[name=?]", "listing[user]"

      assert_select "input[name=?]", "listing[listing_category]"
    end
  end
end
