require 'rubygems'
require 'nokogiri'
require 'open-uri'

page = Nokogiri::HTML(open("http://ruby.bastardsbook.com/files/hello-webpage.html"))
puts page.css('title').text
puts page.css('title')[0].name
puts page.css('li')[0].text

links = page.css("a")
puts links.length
puts links[2].text
puts links[2]["href"]

#page2 = Nokogiri::HTML(open("http://www.ekipio.com/"))
news_links = page.css("a").select{|link| link['data-category'] == "news"}
news_links.each{|link| puts link['href'] }
puts news_links.class

news_links2 = page.css("a[data-category=news]")
news_links2.each {|link| puts link['href']}
puts news_links2.class

news_links3 = page.css('div#references a')
news_links3.each {|link| puts link.text}
news_links3.each {|link| puts "#{link.text}\t#{link['href']}"}
