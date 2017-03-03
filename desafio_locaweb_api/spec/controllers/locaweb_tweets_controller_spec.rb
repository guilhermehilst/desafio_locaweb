require 'rails_helper'

RSpec.describe LocawebTweetsController, type: :controller do

  describe "GET #most_relevants" do
    it "responds successfully with an HTTP 200 status code" do
      get :most_relevants
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end
  end

  describe "GET #most_mentions" do
    it "responds successfully with an HTTP 200 status code" do
      get :most_mentions
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end
  end

end
