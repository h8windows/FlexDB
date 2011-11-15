require 'spec_helper'

describe FeaturesController do

  let(:user) { create_user! } 
  let(:market) { Factory(:market) } 
  let(:feature) { Factory(:feature, :market => market, :user => user) }
  
  context "standard users" do 
    it "cannot access a feature for a market" do
      sign_in(:user, user)
      get :show, :id => feature.id, :market_id => market.id
      response.should redirect_to(root_path)
      flash[:alert].should eql("The market you were looking for could not be found.")
    end
    
    context "with permission to view the market" do
      before do
        sign_in(:user, user)
        Permission.create!(:user => user, :thing => market, :action => "view")
      end
    
      def cannot_create_features!
        response.should redirect_to(market)
        flash[:alert].should eql("You cannot create features on this market.")
      end
      
      def cannot_update_features!
        response.should redirect_to(market)
        flash[:alert].should eql("You cannot modify features on this market.")
      end
    
      it "cannot begin to create a feature" do
        get :new, :market_id => market.id
        cannot_create_features!
      end
    
      it "cannot create a feature without permission" do
        post :create, :market_id => market.id
        cannot_create_features!
      end
      
      it "cannot edit a feature without permission" do
        get :edit, { :market_id => market.id, :id => feature.id }
        cannot_update_features!
      end
      
      it "cannot update a feature without permission" do
        put :update, { :market_id => market.id, :id => feature.id, :feature => {} }
        cannot_update_features!
      end
    end
  end

end
