require 'google_drive'
require 'rubygems'
require 'nokogiri'
require 'open-uri'

#session = GoogleDrive::Session.from_config("config.json")

#99.times { |x|
#$worksheet = session.spreadsheet_by_key("1Sv2NuPKKrSSy54hYUuk9G8HBDK9oT0HhSwzp4m-bVqI").worksheets[x]

#Get cityhalllink

#def get_region_link
#	region_list = Hash.new
	doc=Nokogiri::HTML(open("http://annuaire-des-mairies.com/"))
	region = doc.css('a[class=lientxt]')
	region = region.sort_by {|e| e.text}

	hash_region = Hash.new

#	region.each_with_index do |i|
	for i in 0...region.length
		region_name = region[i]['href'].sub /\.html/, ""
#		puts region_name
#		region_ref = region[i].text.sub /( . [A-Z][a-z]*$)/, ""
		region_ref = region[i].text.sub /\d{2,3}(\s.*)$/, ""
#		region_ref = region[i].text.sub /( . [A-Z][a-z]*$)/, ""
#		puts region_ref
		hash_region[region_ref] = region_name
##		hash_region[region[i].text.sub /( . [A-Z][a-z]*$)/, ""] = region[i]['href'].sub /\.html/, ""
##		hash_region = {region_name => region_ref}

	end









	
##	region.each_with_index {|x, i|

#	region_name = region[0]['href'].sub /\.html/, ""

##		puts region[i].title
#		region_list[region[i].text] = region[i].title
#	


#	region_title = region_array.title
#	region_name = region_array.
#end

#puts region[0] <= TEST
#puts region_name #<= TEST
#puts region_ref #<= TEST
puts hash_region

#def setup_spreadsheet
#	$worksheet[1,1] = "Town"
#	$worksheet[1,2] = "Email address"
#	$worksheet.save
#end

#setup_spreadsheet



# PART 1
#def get_the_email_of_one_townhall_from_its_webpage(link)
#	doc=Nokogiri::HTML(open(link))
#	doc.xpath('//table/tr[3]/td/table/tr[1]/td[1]/table[4]/tr[2]/td/table/tr[4]/td[2]/p/font').text
#end
#get_the_email_of_one_townhall_from_its_webpage(region_link)








#}

#loop