require 'Twitter'

class SendTweet
  def log_in_to_twitter
  @client = Twitter::REST::Client.new do |config|
    config.consumer_key        = ""
    config.consumer_secret     = ""
    config.access_token        = ""
    config.access_token_secret = ""
  end
  p "login: #@client"
  end

  def initialize(message)
    @message = message
  end


   def send_tweet
     @client.update("#@message")
   end

  def perform
   p "perform: #@message"
   log_in_to_twitter
   send_tweet
  end

end
