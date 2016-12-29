types_of_people = 10
x = "There are #{types_of_people} types of people." # integer insde a string
binary = "binary"
do_not = "don't"
y = "Those who know #{binary} and those who #{do_not}." # string inside string 1 & 2

puts x
puts y

puts "I said: #{x}." # string inside string 3
puts "I also said: '#{y}'." # string inside string 4

hilarious = false
joke_evaluation = "Isn't that joke so funny?! #{hilarious}" # boolen inside a string

puts joke_evaluation

w = "This is the left side of..."
e = "a string with a right side."

puts w + e
# single quotes does not work in this example because
#single quotes does not support string interpolation
