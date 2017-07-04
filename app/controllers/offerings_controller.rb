class OfferingsController < ApplicationController
  def index
    @offerings = Offering.all
    @category = params[:category]
    unless @category.nil?
      @offerings = Offering.where(category_id: @category[:category_id])
    end
  end
end
