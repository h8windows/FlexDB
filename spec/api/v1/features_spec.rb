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
  
end