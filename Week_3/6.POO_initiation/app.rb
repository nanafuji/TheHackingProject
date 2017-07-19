require 'pry'

class User
#	attr_reader :firstname
#	attr_writer :lastname
	attr_accessor :firstname, :lastname
	@@all = []

#	def count
#		return @@all
#	end

	def initialize (firstname, lastname)
		@firstname = firstname
		@lastname = lastname
#		@@all += 1
		puts "Creating #{self.firstname}"
		@@all.push(self)
#		puts "I'm a new user! My name is #{firstname} #{lastname}"
	end
	def full_name
		return "#{@firstname.capitalize} #{@lastname.capitalize}"
	end
#	def User.count
#		return @@all
#	end
	def self.all
		return @@all
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