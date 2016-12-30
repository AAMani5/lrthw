name, country, language, currency = ARGV

puts "Hello#{name} from #{country} who speaks #{language} and uses #{currency}. Did you know they use \u00a5 in Japan \u2713?"
answer = $stdin.gets.chomp
puts "you said : #{answer}"
