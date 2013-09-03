require "spec_helper"

describe ObservationTutorialsController do
  describe "routing" do

    it "routes to #index" do
      get("/observation_tutorials").should route_to("observation_tutorials#index")
    end

    it "routes to #new" do
      get("/observation_tutorials/new").should route_to("observation_tutorials#new")
    end

    it "routes to #show" do
      get("/observation_tutorials/1").should route_to("observation_tutorials#show", :id => "1")
    end

    it "routes to #edit" do
      get("/observation_tutorials/1/edit").should route_to("observation_tutorials#edit", :id => "1")
    end

    it "routes to #create" do
      post("/observation_tutorials").should route_to("observation_tutorials#create")
    end

    it "routes to #update" do
      put("/observation_tutorials/1").should route_to("observation_tutorials#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/observation_tutorials/1").should route_to("observation_tutorials#destroy", :id => "1")
    end

  end
end
