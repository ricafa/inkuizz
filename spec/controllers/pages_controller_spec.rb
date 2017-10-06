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

    it "gets a user by uid" do
      @user = User.create(id: 1 )
      get :start, :params => { uid: 1 }
      expect(response).to have_http_status(:success)
    end

    it 'fails if user complete the quiz' do
      @user = User.create(id: 1, question_number: 6 )
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
