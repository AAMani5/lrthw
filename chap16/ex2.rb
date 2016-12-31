# ARGV & gets to read test.txt
filename1 = ARGV.first
txt1 = open(filename1)
puts "Printing your file #{filename1}'s contents:"
puts txt1.read
txt1.close #works without the ()

print "which file would you like to read?"
filename2 = $stdin.gets.chomp
txt2 = open(filename2)
puts txt2.read
txt2.close
