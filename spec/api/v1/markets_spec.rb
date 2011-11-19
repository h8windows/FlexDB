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
    it "JSON" do
      get "#{url}.json", :token => token
      markets_json = Market.for(user).all.to_json
      last_response.body.should eql(markets_json)
      last_response.status.should eql(200)
      
      markets = JSON.parse(last_response.body)
      
      markets.any? do |m|
        m["name"] == "Atlanta"
      end.should be_true
      
      markets.any? do |m|
        m["name"] == "Access Denied"
      end.should be_false
    end
    
    it "XML" do
      get "#{url}.xml", :token => token
      last_response.body.should eql(Market.readable_by(user).to_xml)
      markets = Nokogiri::XML(last_response.body)
      markets.css("market name").text.should eql("Atlanta")
    end
    
    context "show" do
      let(:url) { "/api/v1/markets/#{@market.id}" }
      before do
        Factory(:feature, :market => @market)
      end
      
      it "JSON" do
        get "#{url}.json", :token => token
        market = @market.to_json(:methods => "feature")
        last_response.body.should eql(market)
        last_response.status.should eql(200)
        
        market_response = JSON.parse(last_response.body)
        feature_title = market_response["feature"][0]["title"]
        feature_title.should_not be_blank
      end
    end
    
  end
  
  context "creating a market" do
    before do
      user.admin = true
      user.save
    end
    
    let(:url) { "/api/v1/markets" }
    
    it "successful JSON" do
      post "#{url}.json", :token => token, :market => { :name => "Boston" }
      market = Market.find_by_name("Boston")
      route = "/api/v1/markets/#{market.id}"
      
      last_response.status.should eql(201)
      last_response.headers["Location"].should eql(route)
      last_response.body.should eql(market.to_json)
    end
  end
  
  context "updating a market" do
    before do
      user.admin = true
      user.save
    end
    
    let(:url) { "/api/v1/markets/#{@market.id}" }
    it "successful JSON" do
      @market.name.should eql("Atlanta")
      put "#{url}.json", :token => token, :market => { :name => "Boston" }
      last_response.status.should eql(200)
      
      @market.reload
      @market.name.should eql("Boston")
      last_response.body.should eql("{}")
    end
    
    it "unsuccessful JSON" do
      @market.name.should eql("Atlanta")
      put "#{url}.json", :token => token, :market => { :name => "" }
      last_response.status.should eql(422)
      
      @market.reload
      @market.name.should eql("Atlanta")
      errors = { :name => ["can't be blank"] }
      last_response.body.should eql(errors.to_json)
    end
    
  end
  
end