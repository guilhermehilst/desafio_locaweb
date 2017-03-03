Rails.application.routes.draw do
  get 'most_relevants', :to => 'locaweb_tweets#most_relevants'
  get 'most_mentions', :to => 'locaweb_tweets#most_mentions'
end
