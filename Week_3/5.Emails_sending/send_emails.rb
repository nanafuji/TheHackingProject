require 'google_drive'
require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'gmail'


session = GoogleDrive::Session.from_config("config.json")
worksheet = session.spreadsheet_by_key("1mpsHzvfBbcO25WVBzSGC9XZ49LCsMifyL6b2Xyw-6Qs").worksheets[0]


#bagel_email = Array.new
#array_email = []

hash_email = Hash.new


(1..worksheet.num_rows).each do |row|
#	puts $worksheet[row,2] <= TEST
	hash_email[worksheet[row,1]]= worksheet[row,2]
#	array_email << worksheet[row, 2]
end

#puts array_email <= TEST
#puts hash_email <= TEST


Gmail.connect!("nana.fujiyama@gmail.com", "password") do |gmail|

#array_email.each do |x|
hash_email.each do |key, value|
	gmail.deliver do
#		to x
		to value
##		subject "Quizzzzzzzzzz"
		subject "Hello #{key}"
#		text_part do
#			body "Qu'est ce qu'on mange aujourd'hui?"
#		end
		html_part do
			content_type 'text/html; charset=UTF-8'
#			body "<p>Text of <em>html</em> message.</p>"
#			body "<p><span style='color:red;'>Where is it?</span><br><span style='font-size:50px;'>Play and get your ticket to the second stage!</span></p>"
			body "#{key.capitalize}, Can you guess where this picture has been taken?<br><span style='font-size:30px;'>Play to get access to the <strong><span style='color:blue;'>next</span> stage</strong></span>"
		end
		add_file "/home/nana/THP/Week_3/5.Emails_sending/quizz.jpg"
	end
end

end
