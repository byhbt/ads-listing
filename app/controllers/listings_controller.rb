class ListingsController < ApplicationController
  before_action :set_listing, only: [:show]

  # GET /listing_categories/1
  def show; end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_listing
    @listing = Listing.find(params[:id])
  end
end
