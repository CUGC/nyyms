require "spec_helper"

describe NyymsController do
  describe "routing" do

    it "routes to #index" do
      get("/nyyms").should route_to("nyyms#index")
    end

    it "routes to #new" do
      get("/nyyms/new").should route_to("nyyms#new")
    end

    it "routes to #show" do
      get("/nyyms/1").should route_to("nyyms#show", :id => "1")
    end

    it "routes to #edit" do
      get("/nyyms/1/edit").should route_to("nyyms#edit", :id => "1")
    end

    it "routes to #create" do
      post("/nyyms").should route_to("nyyms#create")
    end

    it "routes to #update" do
      put("/nyyms/1").should route_to("nyyms#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/nyyms/1").should route_to("nyyms#destroy", :id => "1")
    end

  end
end
