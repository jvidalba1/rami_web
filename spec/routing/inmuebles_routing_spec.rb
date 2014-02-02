require "spec_helper"

describe InmueblesController do
  describe "routing" do

    it "routes to #index" do
      get("/inmuebles").should route_to("inmuebles#index")
    end

    it "routes to #new" do
      get("/inmuebles/new").should route_to("inmuebles#new")
    end

    it "routes to #show" do
      get("/inmuebles/1").should route_to("inmuebles#show", :id => "1")
    end

    it "routes to #edit" do
      get("/inmuebles/1/edit").should route_to("inmuebles#edit", :id => "1")
    end

    it "routes to #create" do
      post("/inmuebles").should route_to("inmuebles#create")
    end

    it "routes to #update" do
      put("/inmuebles/1").should route_to("inmuebles#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/inmuebles/1").should route_to("inmuebles#destroy", :id => "1")
    end

  end
end
