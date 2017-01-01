def print_array (max, inc)
  i = 0
  numbers = []
  for i in 0..max
    # print i
    numbers.push (i) # numbers << i
    i += inc
    #print i
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
