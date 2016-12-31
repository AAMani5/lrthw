#using only gets.chomp to get filename

print "Type the filename here: "
file_again = gets.chomp

txt_again = open(file_again)

puts "Your file #{file_again}'s contents:"
print txt_again.read
txt_again.close()
