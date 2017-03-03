require 'net/http'
class LocawebTweet
  attr_reader :all_tweets, :valid_tweets

  def initialize
    
    baseurl = "http://tweeps.locaweb.com.br/tweeps"
    uri = URI("#{baseurl}")
    request = Net::HTTP::Get.new uri.request_uri

    http = Net::HTTP.new(uri.host, uri.port)
    request.initialize_http_header({ "Username" => "guilhermehilst@gmail.com" })
    http.start
    response = http.request(request)

    @all_tweets = JSON.parse(response.body)

    @valid_tweets = []

  end

  def filter
    # Removing replies to locaweb tweets
    @all_tweets['statuses'].reject!{ |tweet| tweet["in_reply_to_user_id"] == 42 }
    # Removing tweets that not mention locaweb
    @all_tweets['statuses'].each do |tweet|
      tweet['entities']['user_mentions'].each do |mention|
        if mention['id'] == 42
          @valid_tweets << Tweet.new( :screen_name => tweet['user']['screen_name'], 
                                      :followers_count => tweet['user']['followers_count'],
                                      :retweet_count => tweet['retweet_count'],
                                      :favourites_count => tweet['favourites_count'],
                                      :text => tweet['text'],
                                      :created_at => tweet['created_at']
                                    )
        end
      end
    end
  end

end