require 'rubygems'
require 'nokogiri'
require 'open-uri'


current_rate = Hash.new()
doc = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
coin = doc.xpath('//*/tr/td[2]/a')
rate = doc.xpath('//*/td[5]/a')

for i in 0...coin.length do
coin_text = coin[i].text
rate_text = rate[i].text
current_rate [coin_text] = rate_text
puts "#{coin_text}: #{rate_text}"
end
