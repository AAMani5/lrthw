# 1 general var
def print_string(input)
  p input
end
# 2 user input as gets.chomp
def user_wants(what)
  p what
end
# 3 cl args
def cl_wants(cla)
  p cla
end
# 4 math
def power(base, exponent)
  p base ** exponent
end
# 5 math + var
multi = "\u20AA"
def multiple(char)
  p char * 10
end
# 6 nothing
def just_print
  p "no inputs"
end
# 7 other method
def long(length_of)
  p length_of
end
# 8 block
def block
  yield
end
# 9 proc
my_proc = Proc.new {p "print from proc"}
def from_where(give)
  give.call
end
# 10 mix int & user input
def multiple_of(j)
  p 3*j
end

print_string("directly as string")
user_wants($stdin.gets.chomp)
cl_wants(ARGV.first)
power(2,5)
multiple(multi)
just_print
long("characters".length)
block {p "printing from block"}
from_where(my_proc)
multiple_of($stdin.gets.chomp.to_i)
