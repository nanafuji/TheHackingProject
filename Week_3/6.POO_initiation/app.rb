require 'pry'

class User
	attr_reader :firstname
	attr_writer :lastname
	
	def initialize (firstname, lastname)
		@firstname = firstname
		@lastname = lastname
		puts "I'm a new user! My name is #{firstname} #{lastname}"
	end
	def full_name
		return "#{@firstname.capitalize} #{@lastname.capitalize}"
	end
#	def set_name_to(some_string)
#		@name = some_string
#	end
#	def get_firstname
#		return @firstname
#	end
#	def set_firstname(firstname)
#		@firstname = firstname
#	end
#	def greet
#		puts "Hi! My name is #{@name}"
#	end
end

binding.pry

puts "end of file"