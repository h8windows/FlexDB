class MarketsController < ApplicationController
  
  
  before_filter :authorize_admin!, :except => [:index, :show]
  before_filter :authenticate_user!, :only => [:show]
  before_filter :find_market, :only => [:show, :edit, :update, :destroy]
  
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
  
  private
  def find_market
    @market = if current_user.admin?
      Market.find(params[:id])
    else
      @market = Market.readable_by(current_user).find(params[:id])
    end
    rescue ActiveRecord::RecordNotFound
    flash[:alert] = "The market you were looking for could not be found."
    redirect_to markets_path
  end
  
end
