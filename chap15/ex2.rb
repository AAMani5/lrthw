#using only ARGV to get filename
filename = ARGV.first

txt = open(filename) # open return File object which has methods of its own

puts "Here's your file #{filename}:"
print txt.read # read method of the object used to read content
txt.close() # to close the file after opening & reading
