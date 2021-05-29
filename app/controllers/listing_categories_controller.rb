# frozen_string_literal: true

class ListingCategoriesController < ApplicationController
  before_action :set_listing_category, only: [:show]

  # GET /listing_categories/1
  def show
    @pagy, @listings = listings
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_listing_category
    @listing_category = ListingCategory.find(params[:id])
  end

  def listings
    @pagy, @records = pagy(@listing_category.listings)
  end
end
