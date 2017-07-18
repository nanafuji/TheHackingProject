require 'gmail'

Gmail.connect!("nana.fujiyama@gmail.com", "password") do |gmail|
#	puts gmail.inbox.count(:unread)
#	puts gmail.inbox.count(:before => Date.parse("2017-01-01"))
#	puts gmail.inbox.count(:after => Date.parse("2017-01-01"))


#email_list = ["nana.fujiyama@gmail.com", "issei.morimoto@gmail.com", "nicolas.tsan@gmail.com"]
#email_list.each do |x|

	gmail.deliver do
#		to "philippehoang1@gmail.com"
		to "nana.fujiyama@gmail.com"
#		to ["nana.fujiyama@gmail.com", "issei.morimoto@gmail.com", "nicolas.tsan@gmail.com"]
#		to x
		subject "Test"
#		text_part do
#			body "Qu'est ce qu'on mange aujourd'hui?"
#		end
		html_part do
			content_type 'text/html; charset=UTF-8'
#			body "<p>Text of <em>html</em> message.</p>"
			body "<p>Qu est ce qu'on mange <span style='font-size:20px;'>aujourd hui?</span></p>"
		end
		add_file "/home/nana/THP/Week_3/4.gmail/bagel.jpg"
	end
#end

end
