require 'net/http'
class LocawebTweet
  attr_reader :all_tweets

  def initialize
    
    baseurl = "http://tweeps.locaweb.com.br/tweeps"
    uri = URI("#{baseurl}")
    request = Net::HTTP::Get.new uri.request_uri

    http = Net::HTTP.new(uri.host, uri.port)
    request.initialize_http_header({ "Username" => "guilhermehilst@gmail.com" })
    http.start
    response = http.request(request)

    @all_tweets = JSON.parse(response.body)

  end

end