require "rails_helper"

RSpec.describe ListingCategoriesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/listing_categories").to route_to("listing_categories#index")
    end

    it "routes to #new" do
      expect(get: "/listing_categories/new").to route_to("listing_categories#new")
    end

    it "routes to #show" do
      expect(get: "/listing_categories/1").to route_to("listing_categories#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/listing_categories/1/edit").to route_to("listing_categories#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/listing_categories").to route_to("listing_categories#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/listing_categories/1").to route_to("listing_categories#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/listing_categories/1").to route_to("listing_categories#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/listing_categories/1").to route_to("listing_categories#destroy", id: "1")
    end
  end
end
