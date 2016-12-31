from_file, to_file = ARGV

puts "Copying from #{from_file} to #{to_file}"

#indata = open(from_file).read
in_file = open(from_file) # open the file, default 'r' mode
indata = in_file.read #contents as string to indata variable

puts "The input file is #{indata.length} bytes long"

puts "Does the output file exist? #{File.exist?(to_file)}" # checking if file exists
puts "Ready, hit RETURN to continue, CTRL-C to abort."
$stdin.gets

out_file = open(to_file, 'w') #opening file in 'w' mode, assigning it to out_file
out_file.write(indata) # string data in indata var passed to write()

puts "Alright, all done."

out_file.close
in_file.close
