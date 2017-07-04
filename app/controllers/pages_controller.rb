class PagesController < ApplicationController
  def index
    @offerings = Offering.where(featured: true)
    render :index
  end
end
