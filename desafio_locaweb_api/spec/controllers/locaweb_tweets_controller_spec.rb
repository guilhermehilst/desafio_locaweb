require 'rails_helper'

RSpec.describe LocawebTweetsController, type: :controller do

  before do
    stub_request(:get, "http://tweeps.locaweb.com.br/tweeps").
      with(headers: {
        'Username' => 'guilhermehilst@gmail.com'
      }).to_return(status: 200, body: File.new(File.join(Rails.root, '/spec/fixtures/files/tweets_response_json.txt')))
  end

  describe "GET #most_relevants" do
    it "responds successfully with an HTTP 200 status code" do
      get :most_relevants
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "responds with a valid json" do
      get :most_relevants
      expect(response.body).to eq(File.read(File.join(Rails.root, '/spec/fixtures/files/relevants_response_json.txt')))
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
