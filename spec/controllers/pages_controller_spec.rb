require 'rails_helper'

RSpec.describe PagesController, type: :controller do

  describe "GET #start" do
    it "returns http success" do
      get :start
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #finish" do
    it "returns http success" do
      get :finish
      expect(response).to have_http_status(:success)
    end
  end

end
