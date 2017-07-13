require 'rubygems'
require 'nokogiri'
require 'open-uri'


# PART 1
def get_the_email_of_a_townhall_from_its_webpage(link)
	doc = Nokogiri::HTML(open(link))
	puts doc.xpath('//table/tr[3]/td/table/tr[1]/td[1]/table[4]/tr[2]/td/table/tr[4]/td[2]/p/font').text
end
get_the_email_of_a_townhall_from_its_webpage("http://annuaire-des-mairies.com/95/vemars.html")

#get_the_email_of_a_townhall_from_its_webpage


# PART 2

def get_all_the_urls_of_val_doise_townhalls(link2)
#	Email_List = hash.new()
	link2 = "http://annuaire-des-mairies.com/val-d-oise.html"
	doc = Nokogiri::HTML(open(link2))
	name = doc.css('a[class=lientxt]')
	
	name.each_with_index { |x, i|
		name_corrected = name[i]['href'].sub /\./, ""
		link3 = "http://annuaire-des-mairies.com"+"#{name_corrected}"
		get_the_email_of_a_townhall_from_its_webpage(link3)
	}
	
#	doc2 = Nokogiri::HTML(open("name[0]["href"]"))
#	Email_List[name] = 

end

get_all_the_urls_of_val_doise_townhalls("http://annuaire-des-mairies.com/val-d-oise.html")






#puts get_the_email_of_a_townhal_from_its_webpage()


#puts page.css('title').text
#puts page.css('title')[0].name
#puts page.css('li')[0].text

#links = page.css("a")
#puts links.length
#puts links[2].text
#puts links[2]["href"]

#page2 = Nokogiri::HTML(open("http://www.ekipio.com/"))
#news_links = page.css("a").select{|link| link['data-category'] == "news"}
#news_links.each{|link| puts link['href'] }
#puts news_links.class

#news_links2 = page.css("a[data-category=news]")
#news_links2.each {|link| puts link['href']}
#puts news_links2.class

#news_links3 = page.css('div#references a')
#news_links3.each {|link| puts link.text}
#news_links3.each {|link| puts "#{link.text}\t#{link['href']}"}
