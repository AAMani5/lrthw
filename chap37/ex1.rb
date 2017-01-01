#reading code from github.com/ruby/ruby

require 'pty' # require a module named PTY so that its methods can be used

if ARGV.size == 0 then
  ofile = "typescript"  # no ARGV given then
else
  ofile = ARGV[0]  # if ARGV given then store the first one
end

logfile = File.open(ofile,"a") # opening a file in append mode

system "stty -echo raw lnext ^_" #executes these bash cmd in a shell
#http://stackoverflow.com/questions/2232/calling-shell-commands-from-ruby
# -echo is disabing echo
PTY.spawn("/bin/csh") do |r_pty,w_pty,pid|  #using spawn method of PTY module

  Thread.new do # creating a new Thread object
    while true
      w_pty.print STDIN.getc.chr #getting character input from STDIN
      w_pty.flush #
    end
  end

  begin  # begining of a code block
    while true
      c = r_pty.sysread(512) # reads a block of memory and stores it in a variable c
      break if c.nil? # exit the loop if c has nothing
      print c
      STDOUT.flush # forcing the output to appear immediately
      logfile.print c
    end
  rescue # to handle an exception
  #  print $@,':',$!,"\n"
    logfile.close # closes the file
  end
end

system "stty echo -raw lnext ^v" # bash commands 
