class OfferingsController < ApplicationController
  def show
    @offering = Offering.find(params[:id])
    render 'show'
  end

  def index
    @offerings = Offering.all
    unless params[:category_id].blank?
      @offerings = @offerings.where(category_id: params[:category_id])
    end
  end
end
