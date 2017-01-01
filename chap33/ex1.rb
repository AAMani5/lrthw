i = 0
numbers = []

while i < 6
  puts "At the top i is #{i}"
  numbers.push (i) # numbers << i

  i += 1
  puts "Numbers now: ", numbers
  puts "At the bottom i is #{i}"
end

puts "The numbers: "

# remember you can write this 2 other ways?
numbers.each {|num| puts num}

# 1. one way
# numbers.each do |num|
#  puts num
# end
# 2. 2nd way
# (0..5).each do |i|
#   puts i
# end
