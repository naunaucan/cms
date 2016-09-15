require "rails_helper"

RSpec.describe KotaController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/kota").to route_to("kota#index")
    end

    it "routes to #new" do
      expect(:get => "/kota/new").to route_to("kota#new")
    end

    it "routes to #show" do
      expect(:get => "/kota/1").to route_to("kota#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/kota/1/edit").to route_to("kota#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/kota").to route_to("kota#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/kota/1").to route_to("kota#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/kota/1").to route_to("kota#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/kota/1").to route_to("kota#destroy", :id => "1")
    end

  end
end
