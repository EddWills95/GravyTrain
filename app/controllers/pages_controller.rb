class PagesController < ApplicationController
  def index
    @offerings = Offering.where(featured: true)
  end

  def help 

  end

  def find_out_more

  end
end
