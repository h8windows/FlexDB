class Api::V1::MarketsController < Api::V1::BaseController
  
  def index
    respond_with(Market.all)
  end
end