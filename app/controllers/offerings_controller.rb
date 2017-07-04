class OfferingsController < ApplicationController
  def show
    @offering = Offering.find(params[:id])
    render 'show'
  end
end
