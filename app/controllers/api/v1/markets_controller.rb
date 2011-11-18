class Api::V1::MarketsController < Api::V1::BaseController
  
  def index
    respond_with(Market.for(current_user))
  end
end