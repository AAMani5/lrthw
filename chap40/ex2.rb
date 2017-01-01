# study drill 1,2 & 3 - add more Song instances,pass a variable & add functionality

class Song

  def initialize(lyrics)
    @lyrics = lyrics
  end

  def sing_me_a_song()
    @lyrics.each {|line| puts line}
  end

  def first_line() # added a new method that gives just the 1st line
    puts @lyrics.first
  end
end

happy_bday = Song.new(["Happy birthday to you", "I don't want to get sued",
  "So I'll stop right there"])

bulls_on_parade = Song.new(["They rally around the family",
  "With pockets full of shells"])

silent_night = Song.new(["Silent night","Holy night","All is calm", "All is bright"])

all_i_want = ["I don't want a lot for Christmas","There is just one thing I need","I don't care about the presents",
  "Underneath the christmas tree","I just want you for my own"]

  happy_bday.sing_me_a_song()
  happy_bday.first_line

  bulls_on_parade.sing_me_a_song()

  silent_night.sing_me_a_song()
  silent_night.first_line

  Song.new(all_i_want).sing_me_a_song # this is creating an instance/object & calling a method on it
  # mariah_carey = Song.new(all_i_want)
  # mariah_carey.sing_me_a_song
