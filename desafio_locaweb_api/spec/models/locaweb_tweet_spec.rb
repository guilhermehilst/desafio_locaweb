require "rails_helper"

RSpec.describe LocawebTweet, :type => :model do

  before do
    stub_request(:get, "http://tweeps.locaweb.com.br/tweeps").
      with(headers: {
        'Username' => 'guilhermehilst@gmail.com'
      }).to_return(status: 200, body: File.new(File.join(Rails.root, '/spec/fixtures/files/tweets_response_json.txt')))
  end

  describe ".initialize" do
    it "instance a valid LocawebTweet" do
      @locawebtweet = LocawebTweet.new
      expect(@locawebtweet.all_tweets).not_to be_empty
    end
  end

  describe ".filter" do
    it "filter valid tweets" do
      @locawebtweet = LocawebTweet.new
      @locawebtweet.filter
      expect(@locawebtweet.valid_tweets).not_to be_empty
      expect(@locawebtweet.valid_tweets).to be_a_kind_of(Array)
      expect(@locawebtweet.valid_tweets).to all(be_a(Tweet)) 
    end
  end

  describe ".sorted_by_priority" do
    it "sort tweets by priority" do
      @locawebtweet = LocawebTweet.new
      @locawebtweet.filter
      @locawebtweet.sorted_by_priority
      expect(@locawebtweet.valid_tweets.first.screen_name).to eq("kellen_rempel")
      expect(@locawebtweet.valid_tweets.last.screen_name).to eq("donavon_hegmann_md")
    end
  end

end