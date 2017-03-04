class LocawebTweetsController < ApplicationController

  def most_relevants
    @locaweb_tweets = LocawebTweet.new
    @locaweb_tweets.filter
    render json: @locaweb_tweets.sorted_by_priority
  end

  def most_mentions
    @locaweb_tweets = LocawebTweet.new
    @locaweb_tweets.filter
    @locaweb_tweets.sorted_by_priority
    render json: @locaweb_tweets.most_mentions.map { |k, value| {screen_name: k, tweets: value} }
  end

end
