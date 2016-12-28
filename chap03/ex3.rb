puts "I will not count my chicken:"

puts "Hens #{25.0+30/6}" # 25+5 = 30
puts "Roosters #{100.0-25*3%4}" # 97 100 - 75%4 == 100-3 == 97

puts "Now I will count the eggs:"

puts 3.0+2.0+1.0-5.0+4.0%2.0-1.0/4.0+6.0 #6.75 which is the right number not 7 which is rounded
puts 3+2+1-5+4%2-1.fdiv(4)+6 # same ans as above, just used fdiv method

puts "Is it true that 3+2 < 5-7?"

puts 3.0+2 < 5.0-7 # false

puts "What is 3+2? #{3.0+2}" # 5
puts "What is 5-7? #{5.0-7}" # -2

puts "Oh, that's why it's false."

puts "How about some more."

puts "Is it greater? #{5.0>-2}" # true
puts "is it greater or equal? #{5.0 >= 2}" #true
puts "Is it less or equal? #{5.0 <= -2}" #false
