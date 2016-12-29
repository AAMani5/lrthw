# adding converter variables
# inches to cm & pounds to Kg
name = 'Zed A. Shaw'
age = 35 # not a lie in 2009
height = 74 # inches
inches_to_cm = 2.54
weight = 180 # lbs
pounds_to_kg = 0.45
eyes = 'Blue'
teeth = 'White'
hair = 'Brown'

puts "Lets talk about #{name}."
puts "He's #{height} inches or #{height * inches_to_cm} centimeters tall."
puts "He's #{weight} pounds or #{weight * pounds_to_kg} kilogram heavy."
puts "Actually that's not too heavy."
puts "He's got #{eyes} eyes and #{hair} hair."
puts "His teeth are usually #{teeth} depending on the coffee."

#this line is tricky, try to get it exactly right
puts "If I add #{age}, #{height}, and #{weight} I get #{age + height + weight}"
