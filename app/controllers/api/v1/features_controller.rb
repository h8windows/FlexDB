class Api::V1::FeaturesController < Api::V1::BaseController
  
  before_filter :find_market
  
  respond_to :html, :xml, :json, :js
  
  def index
    respond_with(@market.features) do |format|
      format.js {render :json => @market.features, :callback => params[:callback]}
      format.xml { render :xml => @market.features}
    end
  end
    
  def create
    @feature = Feature.new(params[:feature])

    respond_to do |format|
      if @feature.save
        format.js {render :json => @features}
        format.xml { render :xml => @features}
      else
        format.js { render :json => @feature.errors, :status => :unprocessable_entity }
        format.xml  { render :xml => @feature.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  def update
      @feature = Feature.find(params[:id])

      respond_to do |format|
        if @feature.update_attributes(params[:feature])
          format.js  { head :ok }
          format.xml  { head :ok }
        else
          format.js { render :json => @feature.errors, :status => :unprocessable_entity }
          format.xml  { render :xml => @feature.errors, :status => :unprocessable_entity }
        end
      end
    end
  
  private
    def find_market
    @market = Market.for(current_user).find(params[:market_id])
    rescue ActiveRecord::RecordNotFound
      error = { :error => "The market you were looking for could not be found." }
      respond_with(error, :status => 404)
    end 
    
end