filename = ARGV.first

txt = open(filename) # ri "File#open" on command line to read more

puts "Here's your file #{filename}:"
print txt.read
txt.close() # to close the file after opening & reading

print "Type the filename again: "
file_again = $stdin.gets.chomp

txt_again = open(file_again)

print txt_again.read
txt_again.close()
