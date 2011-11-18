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
  end
end