class Api::V1::FeaturesController < Api::V1::BaseController
  
  before_filter :find_market
  
  def index
    respond_with(@market.features)
  end
  
  private
    def find_market
    @market = Market.for(current_user).find(params[:market_id])
    rescue ActiveRecord::RecordNotFound
      error = { :error => "The market you were looking for could not be found." }
      respond_with(error, :status => 404)
    end 
    
end