class HomeController < ApplicationController
  
  def index
  	@tweet = Tweet.new
  end

  def create
  	@tweet = Tweet.new(tweet_params)
  	if @tweet.save
  	  SendTweet.new(@tweet.content).perform
  	  redirect_to root_path
  	else
  	  render 'index'
  	end
  end


  private
  def tweet_params
  	params.require(:tweet).permit(:content)
  end

end