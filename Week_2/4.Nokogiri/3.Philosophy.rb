require 'rubygems'
require 'nokogiri'
require 'open-uri'


doc = Nokogiri::HTML(open("https://en.wikipedia.org/wiki/Special:Random"))
title_name = doc.css('h1.firstHeading').text
counter = 0
puts title_name

while title_name != "Philosophy" do
first_link = doc.xpath('//div/p[1]/a[2]')
#puts first_link[0]['href']


first_link_url = "https://en.wikipedia.org#{first_link[0]['href']}"




#puts first_link_url
doc = Nokogiri::HTML(open(first_link_url))
#doc2 = Nokogiri::HTML(open("https://en.wikipedia.org/wiki#{first_link[0]['href']}"))
title = doc.css('h1.firstHeading').text
puts title
counter += 1
puts counter
end



#[@id="mw-content-text"]