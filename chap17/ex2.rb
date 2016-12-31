
open(ARGV.last, 'w').write(open(ARGV.first).read)


#start from the deepest paranthesis : open(ARGV.first) -> open first arg in r mode
#open(ARGV.first).read -> opens and then reads the contents, returns the contents as string
#the above string is passed as parameter to write method of File object
#open(ARGV.last, 'w') open the secind arg as file in 'w' mode
#which means the earlier contents is erased
#script will close when the script exists
#its important to close the file
#see ex3.rb for better example
