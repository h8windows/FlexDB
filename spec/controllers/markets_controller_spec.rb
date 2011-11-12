require 'spec_helper'

describe MarketsController do
  
  it "displays an error for a missing market" do
    get :show, :id => "not-here"
    response.should redirect_to(markets_path)
    message = "The market you were looking for could not be found."
    flash[:alert].should eql(message)
  end

end
