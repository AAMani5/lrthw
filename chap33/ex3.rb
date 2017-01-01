def print_array (max, inc)
  i = 0
  numbers = []
  while i < max
    numbers.push (i) # numbers << i
    i += inc
  end
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
