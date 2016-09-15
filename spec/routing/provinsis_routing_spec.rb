require "rails_helper"

RSpec.describe ProvinsisController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/provinsis").to route_to("provinsis#index")
    end

    it "routes to #new" do
      expect(:get => "/provinsis/new").to route_to("provinsis#new")
    end

    it "routes to #show" do
      expect(:get => "/provinsis/1").to route_to("provinsis#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/provinsis/1/edit").to route_to("provinsis#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/provinsis").to route_to("provinsis#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/provinsis/1").to route_to("provinsis#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/provinsis/1").to route_to("provinsis#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/provinsis/1").to route_to("provinsis#destroy", :id => "1")
    end

  end
end
