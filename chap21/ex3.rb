# formula: x^2 + y^2 +2xy
def square (n)
  n**2
end
def mul_double(n, m)
  2*n*m
end

puts "(2+3)^2 is #{square(2)+square(3)+mul_double(2, 3)}"
