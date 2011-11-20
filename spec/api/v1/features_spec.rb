require "spec_helper"

describe "/api/v1/features", :type => :api do
  let(:market) { Factory(:market, :name => "Atlanta") }
  
  before do
    @user = create_user!
    @user.update_attribute(:admin, true)
    @user.permissions.create!(:action => "view", :thing => market)
  end
  
  let(:token) { @user.authentication_token }
  
  context "index" do
    before do
      5.times do
        Factory(:feature, :market => market, :user => @user)
      end
    end
    
    let(:url) { "/api/v1/markets/#{market.id}/features" }
    
    it "XML" do
      get "#{url}.xml", :token => token
      last_response.body.should eql(market.features.to_xml)
    end
    
    it "JSON" do
      get "#{url}.json", :token => token
      last_response.body.should eql(market.features.to_json)
    end
  end
  
  context "create" do
    let(:url) { "/api/v1/markets/#{market.id}/features" }
    #curl -v -H "Content-Type: application/xml; charset=utf-8" --data-ascii @new.xml http://localhost:3000/api/v1/markets/9/features?token=qqMJpyFbnqXVyPRLCwrv
    it "successful JSON" do
      post "#{url}.json", :token => token, :feature => { :title => "Boston", :content => "This is the article" }
      feature = Feature.find_by_title("Boston")
      puts last_response.headers["Location"]
      #route = "/api/v1/markets/#{feature.id}"
      #puts last_response.headers["Location"]
      #last_response.status.should eql(201)
      #last_response.headers["Location"].should eql(route)
      #last_response.body.should eql(feature.to_json)
    end
  end
  
end