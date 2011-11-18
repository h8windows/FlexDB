class Api::V1::MarketsController < Api::V1::BaseController
  
  before_filter :authorize_admin!, :except => [:index, :show]
  
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
    @market = Market.find(params[:id])
    respond_with(@market, :methods => "last_feature")
  end
  
  
end