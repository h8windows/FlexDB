class MarketsController < ApplicationController
  
  def index
    @markets = Market.all
  end
  
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
  
  def edit
    @market = Market.find(params[:id])
  end
  
  def update
    @market = Market.find(params[:id])
    @market.update_attributes(params[:market])
    flash[:notice] = "Market has been updated."
    redirect_to @market
  end
  
  def destroy
    @market = Market.find(params[:id])
    @market.destroy
    flash[:notice] = "Market has been deleted."
    redirect_to markets_path
  end
  
end
