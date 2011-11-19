class Api::V1::MarketsController < Api::V1::BaseController
  
  before_filter :authorize_admin!, :except => [:index, :show]
  before_filter :find_market, :only => [:show, :update]
  
  def index
    respond_with(Market.for(current_user))
  end
  
  def create
    market = Market.create(params[:market])
    if market.valid?
      respond_with(market, :location => api_v1_market_path(market))
    else
      respond_with(market)
    end
  end
  
  def show
    #@market = Market.find(params[:id])
    respond_with(@market, :methods => "last_feature")
  end
  
  def update
    @market.update_attributes(params[:market])
    respond_with(@market)
  end
  
  private
    def find_market
    @market = Market.for(current_user).find(params[:id])
    rescue ActiveRecord::RecordNotFound
      error = { :error => "The market you were looking for could not be found." }
      respond_with(error, :status => 404)
    end
    
end