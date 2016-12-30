#use a different promt & add another ARGV
user_name, book = ARGV
prompt = "\u03A9 " #a unicode promp used, omega

puts "Hi #{user_name}."
puts "I'd like to ask you a few questions."
puts "You said you are reading #{book}, How do you like it?"
print prompt
book = $stdin.gets.chomp

puts "Do you like me #{user_name}?"
print prompt
likes = $stdin.gets.chomp

puts "Where do you live #{user_name}?"
print prompt
lives = $stdin.gets.chomp


puts "what kind of computer do you have?"
print prompt
computer = $stdin.gets.chomp

puts """
Alright, so you said #{likes} about liking me.
You #{book} the book #{book} you are reading.
You live in #{lives}. Not sure where that is.
And you have a #{computer} computer. Nice
"""
