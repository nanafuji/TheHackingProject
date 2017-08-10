class SendTweet
  
  def initialize(tweet)
   	@tweet = tweet
  end

  def perform
  	log_in_to_twitter
  	send_tweet
  end

  def log_in_to_twitter
  	@client = Twitter::REST::Client.new do |config|
	config.consumer_key = "WUW9YuzfIZTjAaYDuNwUnUX34"
	config.consumer_secret = "fSdogk0fEKxKqjYD3RPKAUToMIcB2gWPm7LTzMD4pwp2MraU5u"
	config.access_token = "885109632619958272-S6wFSjmhlG6Yor0PKcYxMShZLoFwrw0"
	config.access_token_secret = "DgIFnnLobxBooh32tBp11T7BMD3dpsF0ANzeY9BxD1A5G"
	end
  end

  def send_tweet
#  	@client.update('#{@string}') => NO! Tweeting "#{@string}"
  	@client.update(@tweet)
  end

end