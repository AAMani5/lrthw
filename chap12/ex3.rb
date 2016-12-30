print "enter your total & i will give you 10%: "
total = gets.chomp.to_f
puts "10% of total is #{(total * 0.10).round(2)}"
