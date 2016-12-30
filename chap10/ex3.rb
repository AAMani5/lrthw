formatter = "%{first} \t%{second} \n%{third} \t%{fourth}" # using tab and newline inside formatter

puts formatter % {first: 1, second: 2, third: 3, fourth: 4}
puts "using\a an ASCII BEL" # makes a noise during execution
puts "what does a backspace \b do I wonder!" #word boundary - https://www.ruby-forum.com/topic/181455
puts "using form\ffeed" # goes to next line but not to the start
puts "new\nline is interesting" # goes to start of newline
puts "doesn't print this \rbut will print this side of carriage return"
#\r goes back to start of the same line, \n goes to start of next line
puts "using unicode for abcd  and 1234 hex values \uabcd and \u1234"
#\u is using a different encoding, we use UTF-8
puts "never heard of vertical\vtab!"
#seems similar to \f formfeed
puts "whats octal value of 77 & 55? \o77 & \o55" #???
puts "hex value of ef & 45: \xef & \x45"
