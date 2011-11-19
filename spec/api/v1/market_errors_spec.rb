require "spec_helper"

describe "Market API errors", :type => :api do
  context "standard users" do
    let(:user) { create_user! }
    
    it "cannot create markets" do
      post "/api/v1/markets.json", :token => user.authentication_token, :market => { :name => "Atlanta" }
      error = { :error => "You must be an admin to do that." }
      last_response.body.should eql(error.to_json)
      last_response.status.should eql(401)
      Market.find_by_name("Atlanta").should be_nil
    end
    
    it "cannot view markets they do not have access to" do
      market = Factory(:market)
      
      get "/api/v1/markets/#{market.id}.json", :token => user.authentication_token
      error = { :error => "The market you were looking for could not be found." }
      last_response.status.should eql(404)
      last_response.body.should eql(error.to_json)
    end
    
  end
  
end