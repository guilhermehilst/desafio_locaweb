class LocawebTweetsController < ApplicationController

  def most_relevants
    @locaweb_tweets = LocawebTweet.new
    render json: @locaweb_tweets.all_tweets
  end

  def most_mentions
    @locaweb_tweets = LocawebTweet.new
    render json: @locaweb_tweets.all_tweets
  end

end
