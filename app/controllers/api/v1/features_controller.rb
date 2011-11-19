class Api::V1::FeaturesController < Api::V1::BaseController
  
  before_filter :find_market
  #before_filter :find_feature, :only => [:update]
  
  def index
    respond_with(@market.features)
  end
  
  def create
    feature = @market.features.create(params[:feature])
    if feature.valid?
      respond_with(feature, :location => api_v1_market_path(feature))
    else
      respond_with(feature)
    end
  end
  
  def update
    #@feature.update_attributes(params[:feature])
    respond_with(@feature)
  end
  
  private
    def find_market
    @market = Market.for(current_user).find(params[:market_id])
    rescue ActiveRecord::RecordNotFound
      error = { :error => "The market you were looking for could not be found." }
      respond_with(error, :status => 404)
    end
    
    def find_feature
      @feature = @market.features.find(params[:id])
    end 
    
end