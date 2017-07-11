#Restate problem:
#Find the sum of all numbers below 1000 that are divisible by 5 or 3

# Let total = 0
# Iterate over all natural numbers below 1000
# Check if each natural number is divisible by 3 or 5
# If it is, then add the natural number to total
# print total

=begin
Solution 1: with a .each loop
=end
total = 0
(1..1000).each do |x|
	total+=x if x%5==0 || x%3==0
end
puts total


=begin
Solution 2: with a for loop
=end
total=0
i=0
while i<1000 do
	i+=1
	if i%5==0 || i%3==0
		total+=i 
	end
end
puts total
