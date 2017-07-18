require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'json'


# PART 1
def get_the_email_of_a_townhall_from_its_webpage(link)
	doc = Nokogiri::HTML(open(link))
	doc.xpath('//table/tr[3]/td/table/tr[1]/td[1]/table[4]/tr[2]/td/table/tr[4]/td[2]/p/font').text
end
get_the_email_of_a_townhall_from_its_webpage("http://annuaire-des-mairies.com/95/vemars.html")


# PART 2

def get_all_the_urls_of_val_doise_townhalls(link2)
	emaillist = Hash.new()
	link2 = "http://annuaire-des-mairies.com/val-d-oise.html"
	doc = Nokogiri::HTML(open(link2))
	name = doc.css('a[class=lientxt]')
	
	name.each_with_index { |x, i|
		name_corrected = name[i]['href'].sub /\./, ""
		link3 = "http://annuaire-des-mairies.com"+"#{name_corrected}"
		emaillist[name[i].text] = get_the_email_of_a_townhall_from_its_webpage(link3)	
	}

# NEW # After having created a .json file in the directory
	
	File.open("emails.json","w") do |f|
		f.write(emaillist.to_json)
	end

end

get_all_the_urls_of_val_doise_townhalls("http://annuaire-des-mairies.com/val-d-oise.html")


##def get_the_hash_that_I_scrapped_few_days_ago


##end
