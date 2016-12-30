#http://stackoverflow.com/questions/23193813/how-does-gets-and-gets-chomp-in-ruby-work
#gets -> gets userinput as STRING with line break
#chomp -> removes the trailing line break
print "please enter some input: "
tmp = gets
print tmp # tmp has \n at the end
print tmp.chomp
print "end of exercise"
