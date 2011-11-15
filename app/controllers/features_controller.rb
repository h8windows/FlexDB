class FeaturesController < ApplicationController
  
  before_filter :authenticate_user!
  before_filter :find_market
  before_filter :find_feature, :only => [:show, :edit, :update, :destroy]
  before_filter :authorize_create!, :only => [:new, :create]
  before_filter :authorize_update!, :only => [:edit, :update]
  
  def new
    @feature = @market.features.build
  end
  
  def create
    @feature = @market.features.build(params[:feature].merge!(:user => current_user))
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
      @market = Market.for(current_user).find(params[:market_id])
      rescue ActiveRecord::RecordNotFound
      flash[:alert] = "The market you were looking for could not be found."
      redirect_to root_path
    end
    
    def find_feature
      @feature = @market.features.find(params[:id])
    end
    
    def authorize_create!
      if !current_user.admin? && cannot?("create features".to_sym, @market)
        flash[:alert] = "You cannot create features on this market."
        redirect_to @market
      end
    end
    
    def authorize_update!
      if !current_user.admin? && cannot?(:"edit features", @market)
        flash[:alert] = "You cannot modify features on this market."
        redirect_to @market
      end
    end
    
end
