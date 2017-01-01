# game has 3 rooms.
#rooms with walls closing in, filled with insects and the next one filled with cold water!
#and have used a timer (using Threads class)

BEGIN {puts 'Welcome to the game'}
# customised welcome message for user
def welcome
  if ARGV.empty?
    puts "Let's call you 'Ninja'.Welcome to the game room Ninja"
    $user = 'Ninja'
  else
    $user = ARGV.first
    puts "Welcome to the game room #{$user}"
  end
end


# die - one way to exit from the game
def die(reason)
  puts "#{reason}, you did a good job though!"
  exit(0)
end


# walls room - walls will close in & crush if you did freeze for a min!
def walls_room
  puts "The walls are closing in \uEF12"
  puts "You have to run fast to the other end or get crushed!"
  puts "What do you do"

  user_input = Thread.new do  # this thread gets input from user
    print "You have 1 mins before you get crushed..."
    Thread.current[:value] = $stdin.gets.chomp
  end

    timer = Thread.new {sleep 60; user_input.kill; puts} # this thread is to kill the previous thread after time runs out

    user_input.join # joining the user_input thread to main thread (i.e my script)
    if user_input[:value]
      puts "#{$user}, you entered #{user_input[:value]}"
      puts "you didn't just freeze, so I guess you are brave..."
      puts "Lets see if you can handle the next room"
      timer.kill
      insects_room
    else
      puts "You did not run!"
      die("Unfortunately you get crushed!")
    end
end

# room filled with your greatest fear.
def insects_room
  puts "Ah! you made it to the insects room"
  puts "You will love it here, if you like creepy crawlies!"
  puts "What is your greatest fear amongst insects?"
  fear = $stdin.gets.chomp
  puts "we have plenty of #{fear} here so keep your eyes open.."
  puts "you start walking towards the next door ..."
  puts "you see insects approching you...what do you do?"
  walk = Thread.new do
    for i in 1..10
    print "."
    sleep 3
    end
  end
  insect = Thread.new  do
    puts 'buzzzzzzzz...coming to get you unless you kill me...'
    Thread.current[:value] = $stdin.gets.chomp
    puts 'buzzzzzzzz..Ah! you got my cousin! but I am stronger HA HA HA'
    Thread.current[:value] = $stdin.gets.chomp
    puts 'buzzzzzzzz...nooooo... you killed my big brother...I will avenge this death!'
    Thread.current[:value] = $stdin.gets.chomp
  end
  insect.join

  if insect[:value]
    p "Well, you did something to the insects. Lets see how you do in the next room"
    water_room
  else
    die("The insects got you!")
  end
end


# water room - die of hypothermia if you won't decide what to do in 30 mins
def water_room
  puts "Splash!"
  puts "you are in cold water and your brain will stop working in 3 minutes"
  puts "you see a life boat, you can probably reach it"
  puts "think quick...what is your next move?"
  swim = $stdin.gets.chomp

  if swim.downcase.include?("swim")
    puts "Congradulations! \u{1F386} \u{1F386} \u{1F386}" # unicode for fireworks
    puts "You ran and swam your way to victory!"
  else
    die("You should have swam fast and reached the boat!")
  end

end

# game starts here
def start
  welcome
  puts "You have entered a brightly coloured room with three door."
  puts "There is a green coloured door straight ahead." # walls_room
  puts "What do you do?"
  puts "1. open and enter"
  puts "2. come back another time"
  print "> "
  door = $stdin.gets.chomp.to_i
  if door == 1
    walls_room
  elsif door == 2
    die("Sure, See you later")
  else
    puts "You have only two options!"
    puts "Let's start again!"
    start
  end

end

start  #calling start method here

END{ puts 'Thanks for playing'}
