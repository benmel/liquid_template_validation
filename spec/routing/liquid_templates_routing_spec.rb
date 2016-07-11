require "rails_helper"

RSpec.describe LiquidTemplatesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/liquid_templates").to route_to("liquid_templates#index")
    end

    it "routes to #new" do
      expect(:get => "/liquid_templates/new").to route_to("liquid_templates#new")
    end

    it "routes to #show" do
      expect(:get => "/liquid_templates/1").to route_to("liquid_templates#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/liquid_templates/1/edit").to route_to("liquid_templates#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/liquid_templates").to route_to("liquid_templates#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/liquid_templates/1").to route_to("liquid_templates#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/liquid_templates/1").to route_to("liquid_templates#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/liquid_templates/1").to route_to("liquid_templates#destroy", :id => "1")
    end

  end
end
