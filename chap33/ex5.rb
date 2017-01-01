def print_array (max, inc)
  i = 0
  numbers = []
   (0..max).each { |i| numbers << i}
  numbers
end

numbers = print_array(6, 1)
print "The numbers: "
numbers.each {|num| print num, ' '}
puts
numbers = print_array(9, 2)
print "The numbers: "
print numbers * ' '
puts
