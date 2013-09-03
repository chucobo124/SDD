require "spec_helper"

describe PersonalInformationsController do
  describe "routing" do

    it "routes to #index" do
      get("/personal_informations").should route_to("personal_informations#index")
    end

    it "routes to #new" do
      get("/personal_informations/new").should route_to("personal_informations#new")
    end

    it "routes to #show" do
      get("/personal_informations/1").should route_to("personal_informations#show", :id => "1")
    end

    it "routes to #edit" do
      get("/personal_informations/1/edit").should route_to("personal_informations#edit", :id => "1")
    end

    it "routes to #create" do
      post("/personal_informations").should route_to("personal_informations#create")
    end

    it "routes to #update" do
      put("/personal_informations/1").should route_to("personal_informations#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/personal_informations/1").should route_to("personal_informations#destroy", :id => "1")
    end

  end
end
