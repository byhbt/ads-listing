class HomeController < ApplicationController
  def index
    @pagy, @listings = listings
  end

  private

  def listings
    @pagy, @records = pagy(Listing.all)
  end
end
