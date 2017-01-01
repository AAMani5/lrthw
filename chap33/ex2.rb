def print_array (max)
  i = 0
  numbers = []
  while i < max
    numbers.push (i) # numbers << i
    i += 1
  end
  numbers
end

numbers = print_array(6)
print "The numbers: "
numbers.each {|num| print num, ' '}
puts
numbers = print_array(9)
print "The numbers: "
print numbers * ' ' 
puts
