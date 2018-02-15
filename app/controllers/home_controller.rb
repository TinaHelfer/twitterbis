class HomeController < ApplicationController
  def index
  	if params[' '] == nil
  		@tweet = ' '
  	else
  		@tweet = params[' '][:content]
  		SendTweet.new(@tweet).perform
  		redirect_to '/'
  	end
  end
end
