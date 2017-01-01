print "Welcome to the secret chambers\n"
print "Before we proceed, do you speak parseltongue? "
parseltongue = $stdin.gets.chomp

if parseltongue.downcase == "yes" || parseltongue.downcase == "y"
  puts "Excellent! Let's start."
else
  puts "Oh dear! Hope you are a quick learner. Good luck. Let's proceed."
end

print "You have come to the chamber's door. What would you say to open it? "
door = $stdin.gets.chomp

if door.downcase == "abna"
  puts "You may enter the chamber. Watct out for shed skin at the end of tunnel."
  puts "................ \uEFCD \uEFCD \uEFCD \uEFCD \uEFCD"
  puts "Now you can hear the serpent ... hissssss hissssss"
  puts "what do you do?"
  puts "1. Call for help"
  puts "2. take our your wand"
  wand = $stdin.gets.chomp

  if wand == "1"
    puts "Unfortunetely you don't get help but the serpent finds you and eats you. Oops!"
  elsif wand == "2"
    puts "You find your wand."
    puts "1. you forget the exact magic words."
    puts "2. avada kedavra"
    spell = $stdin.gets.chomp

      if spell == "avada kedavra"
        puts "You killed the serpent! time to celebrate! "
      else
        puts "Oh!Oh! Later Alligater"
      end
      
  else
    puts "Aw! \a you broke your wand!"
  end

elsif door.downcase == "open"
  puts "Please use parseltongue, not english!. See you when you are ready"
else
  puts "Not ready yet? Its alright, we will meet you when ready!"
end
