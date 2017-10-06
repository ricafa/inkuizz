require 'rails_helper'

RSpec.describe PagesController, type: :controller do
  before do

    thekey = SecureRandom.base58(24)
    @user = User.create(thekey: thekey)

  end
  describe "GET #start" do
    it "gets a new user" do
      get :start
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #finish" do
    it "fails" do
      get :finish
      expect(response).not_to have_http_status(:success)
    end
  end

end
