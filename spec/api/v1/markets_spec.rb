require "spec_helper"

describe "/api/v1/markets", :type => :api do
  
  let(:user) { create_user! }
  let(:token) { user.authentication_token }
  
  before do
    @market = Factory(:market)
    user.permissions.create!(:action => "view", :thing => @market)
  end
  
  context "markets viewable by this user" do
    before do
      Factory(:market, :name => "Access Denied")
    end
    
    let(:url) { "/api/v1/markets" }
    it "json" do
      get "#{url}.json", :token => token
      markets_json = Market.for(user).all.to_json
      last_response.body.should eql(markets_json)
      last_response.status.should eql(200)
      
      markets = JSON.parse(last_response.body)
      puts last_response.body
      puts markets
      
      markets.any? do |m|
        m["name"] == "Access Denied"
      end.should be_false
    end
  end
  
end