
# Ask a string to the user
# Register the string in a variable
# Ask an integer to the user
# Register the integer in a variable
# Define a function to transform the string into ASCII
# Print the result

=begin
def transform(x,y)
    (x.ord+y).chr
end


def chiffre_de_cesar(x,y)
    array = x.split("")
    array.map! {|i| transform(i,y)}
    result = array.join("")
    puts result
end

chiffre_de_cesar("matou",1)
=end


print "What string do you want to transform?"
string = gets.chomp

print "By how many do you want to encrypt?"
offset = gets.chomp.to_i



def transform(x,y)
	if x==" "
		" "
	else		
		ascii = x.ord+y
		unless (ascii >= 97 && ascii <= 122) || (ascii >= 65 && ascii <= 90)
			ascii -= 26
		end
		ascii.chr
	end
end

def chiffre_de_cesar(x,y)
	array = x.split("")
	array.map! {|i| transform(i,y)}
	result = array.join("")
	puts result
end

chiffre_de_cesar(string,offset)