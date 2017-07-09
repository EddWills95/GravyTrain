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
    unless params[:price].blank?
      @offerings = @offerings.where("price <= ?", params[:price])
    end
  end

  def new
     @offering = Offering.new
  end

  def create 
    binding.pry
  end

end
