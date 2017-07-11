# First part
def trader_du_dimanche(evolution)
	difference = 0
	buy_day = 0
	sell_day = 0
	for i in 0...evolution.length
		day1 = evolution[i]
		for j in i...evolution.length
			day2 = evolution[j]
			if day2 - day1 > difference
				difference = day2 - day1
				buy_day = i
				sell_day = j
			end
		end
	end
	puts "First day is day 0. The stock should be bought on day #{buy_day} and sold on day #{sell_day}"
end


trader_du_dimanche([17,3,6,9,15,8,6,1,10])



# Second part
def trader_du_lundi(prevision)

prevision.each 


[jour_1 = { :GOO => 15, :MMM => 14, :ADBE => 12, :EA=> 13, :BA => 8, :KO => 10, :XOM => 20, :GPS => 7, :MCD => 11, DIS => 15, :CRM => 6, :JNJ => 10 },
jour_2 = { :GOO => 8, :array_MMM => 20, :ADBE => 3, :EA=> 10, :BA => 5, :KO => 19, :XOM => 12, :GPS => 6, :MCD => 15, DIS => 9, :CRM => 10, :JNJ => 17 },
jour_3 = { :GOO => 3, :MMM => 8, :ADBE => 15, :EA=> 5, :BA => 10, :KO => 5, :XOM => 15, :GPS => 13, :MCD => 10, DIS => 18, :CRM => 5, :JNJ => 14 },
jour_4 = { :GOO => 17, :MMM => 3, :ADBE => 6, :EA=> 9, :BA => 15, :KO => 6, :XOM => 8, :GPS => 1, :MCD => 10, DIS => 15, :CRM => 18, :JNJ => 3 },
jour_5 = { :GOO => 8, :MMM => 18, :ADBE => 4, :EA=> 6, :BA => 15, :KO => 18, :XOM => 3, :GPS => 12, :MCD => 19, DIS => 3, :CRM => 7, :JNJ => 9 },
jour_6 = { :GOO => 10, :MMM => 12, :ADBE => 8, :EA=> 3, :BA => 18, :KO => 20, :XOM => 5, :GPS => 11, :MCD => 3, DIS => 9, :CRM => 8, :JNJ => 15 },
jour_7 = { :GOO => 17, :MMM => 14, :ADBE => 2, :EA=> 17, :BA => 7, :KO => 13, :XOM => 1, :GPS => 15, :MCD => 15, DIS => 10, :CRM => 9, :JNJ => 17 }]



array_GOO = prevision.map {|h| h[:GOO]}


=begin
Pour chaque hash de l'array: 
	Pour chaque indice de l'array

	Predre chaque key
Prendre le premier éléément et le mettre dans un array

Transformer le array de hash en array d'array











def compare(array)
	array.each do |x|
		i = index[x]
		array2 = array.drop (i)
		y = array2.max
		if y-x <=0
		else


compare([17,3,6,9,15,8,6,1,10])







def compare (array)
	array.each do |x|
		array[x] < array[x+1]


def trader_du_dimanche(x)
	for i
end





trader_du_dimanche([17,3,6,9,15,8,6,1,10])

compare([17,3,6,9,15,8,6,1,10])
	
x-array[]



	|x| 
	start = index[x]
for i = start to (array.length - start)
for i=array.index[x]

	length-x[1|arra



=end