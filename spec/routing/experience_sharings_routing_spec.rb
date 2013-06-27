require "spec_helper"

describe ExperienceSharingsController do
  describe "routing" do

    it "routes to #index" do
      get("/experience_sharings").should route_to("experience_sharings#index")
    end

    it "routes to #new" do
      get("/experience_sharings/new").should route_to("experience_sharings#new")
    end

    it "routes to #show" do
      get("/experience_sharings/1").should route_to("experience_sharings#show", :id => "1")
    end

    it "routes to #edit" do
      get("/experience_sharings/1/edit").should route_to("experience_sharings#edit", :id => "1")
    end

    it "routes to #create" do
      post("/experience_sharings").should route_to("experience_sharings#create")
    end

    it "routes to #update" do
      put("/experience_sharings/1").should route_to("experience_sharings#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/experience_sharings/1").should route_to("experience_sharings#destroy", :id => "1")
    end

  end
end
