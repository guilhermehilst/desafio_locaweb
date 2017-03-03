require "rails_helper"

RSpec.describe LocawebTweet, :type => :model do

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

end