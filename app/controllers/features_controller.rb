class FeaturesController < ApplicationController
  
  before_filter :find_market
  before_filter :find_feature, :only => [:show, :edit, :update, :destroy]
  
  def new
    @feature = @market.features.build
  end
  
  def create
    @feature = @market.features.build(params[:feature])
    if @feature.save
      flash[:notice] = "Feature article has been created."
      redirect_to [@market, @feature]
    else
      flash[:alert] = "Feature article has not been created."
      render :action => "new"
    end
  end
  
  def show
    
  end
  
  def edit
    
  end
  
  def update
    if @feature.update_attributes(params[:feature])
      flash[:notice] = "Feature has been updated."
      redirect_to [@market, @feature]
    else
      flash[:alert] = "Feature has not been updated."
      render :action => "edit"
    end
  end
  
  def destroy
    @feature.destroy
    flash[:notice] = "Feature has been deleted."
    redirect_to @market
  end
  
  private
    def find_market
      @market = Market.find(params[:market_id])
    end
    
    def find_feature
      @feature = @market.features.find(params[:id])
    end
    
end
