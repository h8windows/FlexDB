require "spec_helper"

describe "/api/v1/features", :type => :api do
  let(:market) { Factory(:market, :name => "Atlanta") }
  
  before do
    @user = create_user!
    @user.update_attribute(:admin, true)
    @user.permissions.create!(:action => "view", :thing => market)
    @feature = Factory(:feature)
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
    it "successful JSON" do
      post "#{url}.json", :token => token, :feature => { :title => "New Feature Article", :content => "This is the article" }
      feature = Feature.find_by_title("New Feature Article")
      route = "/api/v1/markets/#{feature.id}"
      last_response.status.should eql(201)
      last_response.headers["Location"].should eql(route)
      last_response.body.should eql(feature.to_json)
    end
  end
  
  context "update" do
    
    let(:url) { "/api/v1/markets/#{market.id}/features/#{@feature.id}" }
    it "successful JSON via api" do
      @feature.title.should eql("A feature")
      put "#{url}.json", :token => token, :feature => { :title => "New Feature Article", :content => "This is the article" }
      puts last_response.status
      last_response.status.should eql(200)
      @feature.reload
      #        @feature.title.should eql("New Feature Article")
      last_response.body.should eql("{}")
    end
  end


  
  
end