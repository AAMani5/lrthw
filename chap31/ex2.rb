puts "You enter a dark room with three doors. Do you go through door #1, door #2 or door #3?"

print "> "
door = $stdin.gets.chomp

if door == "1"
  puts "There's a giant bear here eating a cheese cake. What do you do?"
  puts "1. Take the cake."
  puts "2. Scream at the bear."

  print "> "
  bear = $stdin.gets.chomp

  if bear == "1"
    puts "The bear eats your face off. Good Job!"
  elsif bear == "2"
    puts "The bear eats your legs off. Good Job!"
  else
    puts "Well, doing %s is probably better. Bear runs away." % bear
  end

elsif door == "2"
  puts "You stare into the endless abyss at Cthulhu's retina."
  puts "1. Blueberries."
  puts "2. Yellow jacket clothespins."
  puts "3. Understanding revolvers yelling melodies."

  print "> "
  insanity = $stdin.gets.chomp

  if insanity == "1" || insanity == "2"
    puts "Your body survives powered by a mind of jello. Good job!"
  else
    puts "The insanity rots your eyes into a pool of muck. Good job!"
  end

elsif door == "3"

  puts "You enter a dragon's bed chamber. Exit door is behind the sleeping dragon."
  puts "1. wait for dragon to wake up."
  puts "2. wake the dragon up."

  print "> "
  dragon = $stdin.gets.chomp

  if dragon == "1"
    puts "Dragon is hibernating. You die of boredom and starvation. Good job!"
  elsif dragon == "2"
    puts "Dragon wakes up, breaths fire and you die. Good job!"
  else
    puts "#{dragon}, hummm! Thats new. You are given a point and moved to next level!"
  end

else
  puts "You stumble around and fall on a knief and die. Good job!"
end
