class MarketsController < ApplicationController
  
  def new
    @market = Market.new
  end
  
  def create
    @market = Market.new(params[:market])
    @market.save
    flash[:notice] = "Market has been created."
    redirect_to @market
  end
  
  def show
    @market = Market.find(params[:id])
  end
  
end
