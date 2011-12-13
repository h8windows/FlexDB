class FilesController < ApplicationController
  
  before_filter :find_market, :only => [:destroy]
  before_filter :find_feature, :only => [:destroy]
  
  def show
    asset = Asset.find(params[:id])
    send_file asset.asset.path, :filename => asset.asset_file_name, :content_type => asset.asset_content_type
  end
  def new
    @feature = Feature.new
    asset = @feature.assets.build
    render :partial => "files/form", 
           :locals => { :number => params[:number].to_i,
                        :asset => asset }
  end
  
  def update
    @feature = Feature.find(params[:id])
    asset = @feature.assets.build
    render :partial => "files/form",
           :locals => { :number => params[:number].to_i,
                        :asset => asset }
  end
  
  def destroy
    asset = Asset.find(params[:id])
    asset.destroy
    redirect_to [@market, @feature]
  end
  
  private
    def find_market
      asset = Asset.find(params[:id])
      featureId = asset.feature_id
      feature = Feature.find(featureId)
      market = feature.market_id
      @market = Market.find(market)
    end
    
    def find_feature
      asset = Asset.find(params[:id])
      featureId = asset.feature_id
      @feature = @market.features.find(featureId)
      
    end
  
end
