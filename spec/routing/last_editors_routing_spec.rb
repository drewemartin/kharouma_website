require "rails_helper"

RSpec.describe LastEditorsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/last_editors").to route_to("last_editors#index")
    end

    it "routes to #new" do
      expect(:get => "/last_editors/new").to route_to("last_editors#new")
    end

    it "routes to #show" do
      expect(:get => "/last_editors/1").to route_to("last_editors#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/last_editors/1/edit").to route_to("last_editors#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/last_editors").to route_to("last_editors#create")
    end

    it "routes to #update" do
      expect(:put => "/last_editors/1").to route_to("last_editors#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/last_editors/1").to route_to("last_editors#destroy", :id => "1")
    end

  end
end
