class Api::V1::MarketsController < Api::V1::BaseController
  
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
  
  
end