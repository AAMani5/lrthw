input_file = ARGV.first

def print_all(f)
  puts f.read
end

def rewind(f)
  f.seek(0) # move it to 0th char in file
end

def print_a_line(line_count, f)
  puts "#{line_count}, #{f.readline}" # readline == gets.chomp
end

current_file = open(input_file)

puts "First let's print the whole file:\n"

print_all(current_file) # the file cursor is end of file

puts "Now let's rewind, kind of like a tape."

rewind(current_file) # this brings file cursor to start

puts "let's print three lines:"

current_line = 1
print_a_line(current_line, current_file) # from the file cursor position, prints one line(ending with \n)
# now the file cursor is at end of line 1
current_line += 1
rewind(current_file) # cursor moved to start of file
print_a_line(current_line, current_file) # prints the 1st line from cursor

current_line += 1
current_file.seek(10) # moves the cursor to 10th character in file
print_a_line(current_line, current_file)
