# OOP Test. Run it as ex1.rb engllish (yes, with an argument)
require 'open-uri' # requiring a module named OPEN-URI
WORD_URL = "http://learncodethehardway.org/words.txt" # storing the webpage
WORDS = [] # declaring empty array
# declaring hash named PHRASES with 6 elements
PHRASES = {
  "class ### < ###\nend" =>
       "Make a class named ### that is-a ###.",
  "class ###\n\tdef initialize(@@@)\n\tend\nend" =>
       "class ### has-a initialize that takes @@@ parameters.",
  "class ###\n\tdef ***(@@@)\n\tend\nend" =>
       "class ### has-a function named *** that takes @@@ parameters.",
  "*** = ###.new()" =>
       "Set *** to an instance of class ###.",
  "***.***(@@@)" =>
       "From *** get the *** function, and call it with parameters @@@.",
  "***.*** = '***'" =>
       "From *** get the *** attribute and set it to '***'."
}
# this variable becomes true if we supply "english" as arg on command line
PHRASE_FIRST = ARGV[0] == "english"
#open the url & store each line into WORDS array after removing trailing \n
open(WORD_URL) { |f|
  f.each_line {|word| WORDS.push(word.chomp)}
}
# scan for a pattern in a snippet, for each pattern found, assign the last word
#from rand_words array, to names variable (capitalize only if caps = true)
def craft_names(rand_words, snippet, pattern, caps=false) # caps defaults to false
  names = snippet.scan(pattern).map do
    word = rand_words.pop()
    caps ? word.capitalize : word
  end

  return names * 2 # return the names variable twice as an array
end

def craft_params(rand_words, snippet, pattern)
  names = (0...snippet.scan(pattern).length).map do # find no. of patters
    param_count = rand(3) + 1  # generate a rand no. btw 0 & 3
    params = (0...param_count).map {|x| rand_words.pop()} # pop last 0-3 words
    params.join(', ') # join them with a comma & assign it to names variable
  end

  return names * 2 # send the variable twice as an array
end

def convert(snippet, phrase)
  rand_words = WORDS.sort_by {rand} # shuffle WORDS array
  class_names = craft_names(rand_words, snippet, /###/, caps = true) #captalised rand words for class
  other_names = craft_names(rand_words, snippet, /\*\*\*/) # non captalised rand words for function/method
  param_names = craft_params(rand_words, snippet, /@@@/) # btw 0-3 rand parameters

  results = [] # empty array

  [snippet, phrase].each do |sentence| # each snippet & phrase substitute patters with actual names generated above
    # fake class names, also copies sentence
    result = sentence.gsub(/###/) {|x| class_names.pop}

    # fake other names
    result.gsub!(/\*\*\*/) {|x| other_names.pop} # using a bang operator to directly substitue the variable

    # fake parameter lists
    result.gsub!(/@@@/) {|x| param_names.pop}

    results.push(result) # append
  end

  return results # returns the result array
end

# keep going until they hit CTRL-D
loop do # loop will continue till user interupts
  snippets = PHRASES.keys().sort_by {rand} # store shuffled keys from hash to snippets

  for snippet in snippets
    phrase = PHRASES[snippet]
    question, answer = convert(snippet, phrase) # for each phrase replace pattern with rand words

    if PHRASE_FIRST
      question, answer = answer, question # if 'english' arg given during command line. Display the answer
    end                                   # else the q and ans pattern is revered

    print question, "\n\n> " # ask question

    exit(0) unless $stdin.gets # exit unless there is any input

    puts "\nANSWER: %s\n\n" % answer # dsplay answer
  end
end
