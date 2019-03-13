require 'rails_helper'

RSpec.describe TriangleController, type: :controller do

  describe "GET /triangle" do 
    it "should return 200 OK" do
      expect(get :index).to have_http_status(200)
    end
  end
  
  describe "POST /triangle" do
    it "should return Scalene" do
      post :create, params: { "triangle": [6, 8, 10] }
      expect(response.body).to eq("Scalene")
    end

    it "should return Isosceles" do
      post :create, params: { "triangle": [3, 3, 4] }
      expect(response.body).to eq("Isosceles")
    end

    it "should return Equilateral" do
      post :create, params: { "triangle": [3, 3, 3] }
      expect(response.body).to eq("Equilateral")
    end

    it "should return Incorrect" do
      post :create, params: { "triangle": [3, 39, 0] }
      expect(response.body).to eq("Incorrect")
    end

    it "should raise exception if incorrect params" do
      post :create, params: { "triangle": [3, 39, 0, 5] }
      expect(response.body).to include("Exception")
    end
  end
end