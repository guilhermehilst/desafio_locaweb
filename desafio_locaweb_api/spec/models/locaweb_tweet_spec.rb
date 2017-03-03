require "rails_helper"

RSpec.describe LocawebTweet, :type => :model do

  describe ".initialize" do
    it "instance a valid LocawebTweet" do
      @locawebtweet = LocawebTweet.new
      expect(@locawebtweet.all_tweets).not_to be_empty
    end
  end

end