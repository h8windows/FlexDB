class MarketsController < ApplicationController
  
  def new
    @market = Market.new
  end
  
  def create
    @market = Market.new(params[:market])
    if @market.save
      flash[:notice] = "Market has been created."
      redirect_to @market
    else
      flash[:alert] = "Market has not been created."
      render :action => "new"
    end
  end
  
  def show
    @market = Market.find(params[:id])
  end
  
end
