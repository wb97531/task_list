require "rails_helper"

RSpec.describe DoersController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/doers").to route_to("doers#index")
    end

    it "routes to #new" do
      expect(:get => "/doers/new").to route_to("doers#new")
    end

    it "routes to #show" do
      expect(:get => "/doers/1").to route_to("doers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/doers/1/edit").to route_to("doers#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/doers").to route_to("doers#create")
    end

    it "routes to #update" do
      expect(:put => "/doers/1").to route_to("doers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/doers/1").to route_to("doers#destroy", :id => "1")
    end

  end
end
