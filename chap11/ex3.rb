print "how much is 1 kg of apple? "
apple_price = gets.chomp
print "how many kgs did you buy? "
apples_quantity = gets.chomp
print "how much is 1 kg of tomatoes? "
tomatoes_price = gets.chomp
print "how many tomatoes did you buy? "
tomatoes_quantity = gets.chomp
total =  apple_price.to_f * apples_quantity.to_f + tomatoes_price.to_f * tomatoes_quantity.to_f
print "your total: #{total}\n"
