#!/usr/bin/env ruby


# PART 1 : GEM TWITTER TUTORIAL
require "twitter"

client = Twitter::REST::Client.new do |config|
	config.consumer_key = ENV["twitter_consumer_key"]
	config.consumer_secret = ENV["twitter_consumer_secret_key"]
	config.access_token = ENV["twitter_access_token"]
	config.access_token_secret = ENV["twitter_access_token_secret"]
# Without creating variables via the console:
#	config.consumer_key = "WUW9YuzfIZTjAaYDuNwUnUX34"
#	config.consumer_secret = "fSdogk0fEKxKqjYD3RPKAUToMIcB2gWPm7LTzMD4pwp2MraU5u"
#	config.access_token = "885109632619958272-S6wFSjmhlG6Yor0PKcYxMShZLoFwrw0"
#	config.access_token_secret = "DgIFnnLobxBooh32tBp11T7BMD3dpsF0ANzeY9BxD1A5G"
end


#client.update('Tweet from the command line!')


#client.search("#ruby").take(50).each do |tweet|
#	puts tweet.text
#end


#search_options = {
#	result_type: "recent",
#	geocode: "39.9525839,-75.1652215,10mi"
#}

#client.search("pope", search_options).take(50).each do |tweet|
#	puts "#{tweet.user.screen_name}: #{tweet.text}"
#end


#client.search("soup", search_options).take(5).each do |tweet|
#	puts "#{tweet.user.screen_name}: #{tweet.text}"
#	client.favorite(tweet) # Liker un tweet
#	client.update("@#{tweet.user.screen_name} Too hot for a soup! XD",
#		in_reply_to_status_id: tweet.id) # Answer to the tweet
#end


# PART 2: TWITTER BOT
# Question 1

#client.update('Hello World!')


#client.search("#tea OR #coffee").take(50).each do |tweet|
#	puts tweet.text
#end


# Question 2
# Emails..?


# Question 3

search_options = {
	result_type: "recent",
#	geocode: "48.856614,2.3522219000000177,10000km" # Paris geocode but restricts too much the results
}

contact_list = Hash.new()
client.search("nous contacter 06", search_options).take(50).each do |tweet|
	str = "#{tweet.text}"
	re = /(0\d[\s*\.*]?\d{2}[\s*\.*]?\d{2}[\s*\.*]?\d{2}[\s*\.*]?\d{2})/
	m = str.match re
	if m == nil
	else
		contact_list["#{tweet.user.screen_name}"] = m.captures
	end
end
puts contact_list


# Question 4


