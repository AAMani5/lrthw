# study drill 1 & 2 - translate methods to what ruby does & explain in english
ten_things = "Apples Oranges Crows Telephone Light Sugar"

puts "Wait there are not 10 things in that list. Let's fix that."

stuff = ten_things.split(' ') #split(ten_things,' ') call split method on ten_things string
more_stuff = ["Day", "Night", "Song", "Frisbee", "Corn", "Banana", "Girl", "Boy"]

# using math to make sure there's 10 items

while stuff.length != 10
  next_one = more_stuff.pop #pop(more_stuff) call pop method on more_stuff array
  puts "Adding: #{next_one}"
  stuff.push(next_one) #push(stuff, next_one) call push method on stuff array with one argument
  puts "There are #{stuff.length} items now."
end

puts "There we go: #{stuff}"

puts "Let's do some things with stuff."

puts stuff[1]
puts stuff[-1]
puts stuff.pop()
puts stuff.join(' ')
puts stuff[3..5].join("#")
