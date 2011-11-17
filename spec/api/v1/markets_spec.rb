require "spec_helper"

describe "/api/v1/markets", :type => :api do
  
  let(:user) { create_user! }
  let(:token) { user.authentication_token }
  
  before do
    @market = Factory(:market)
    user.permissions.create!(:action => "view", :thing => @market)
  end
  
  context "markets viewable by this user" do
    let(:url) { "/api/v1/markets" }
    it "json" do
      get "#{url}.json"
      markets_json = Market.for(user).all.to_json
      last_response.body.should eql(markets_json)
      last_response.status.should eql(200)
      
      markets = last_response.body
      Rails.logger = Logger.new(STDOUT)
      Rails.logger = markets
    end
  end
  
end