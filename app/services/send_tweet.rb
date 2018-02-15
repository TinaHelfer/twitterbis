require 'Twitter'

class SendTweet
  def log_in_to_twitter
  @client = Twitter::REST::Client.new do |config|
    config.consumer_key        = "yI136QFevxLzjMxwGIXrzmwnM"
    config.consumer_secret     = "EhUJL8nQ33CHJ7RcxFJDmeZe7Si6aAkS7gv9j8o8vSqDdERyMR"
    config.access_token        = "953578324189736960-dGr3w7de8QYhay60ssQCP0i5rSPQ3RI"
    config.access_token_secret = "pNwQ1IQhwMvhOEVa7nC6hkdB22Es1mf4lg4xXDTg1M7oc"
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
