require 'twitter'

class Tweet
  def initialize

    @client = Twitter::REST::Client.new do |config|
        config.consumer_key =       "VOqYHjLPnyu68gphKBQIkfMAb"
        config.consumer_secret =    "6nEPTYIT6aXgO00gb8pOZJRqoqwWeiKj5E9J6J0OVa0iB72UvF"
        config.access_token =       "4306338621-H08jAbnXLsL6M4MmVGX06dDz8IatkNQGf2Cme4V"
        config.access_token_secret =       "BZLHagJfuzz2QSPceASiA8forSGJwrIJvkcinluARrLBH"
    end

  end

  def update(string)
    @client.update(string)
  end
end
