File.open(ARGV.last, 'w') do |f|; f.write(File.open(ARGV.first){|f| f.read}) ;end #returns string data to write()
# this way you open and close both files and dont wait till script exists
#the  end keyword and } closes the files
