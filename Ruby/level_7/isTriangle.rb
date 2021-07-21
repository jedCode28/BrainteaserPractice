# https://www.codewars.com/kata/56606694ec01347ce800001b
# 7kyu
# I wrote a method that accepts 3 integer values a, b, c. 
# The method returns true if a triangle can be built with the sides of given length and false in any other case.

def is_triangle(a,b,c)
  if a + b <= c || a + c <= b || b + c <= a
    false
  else 
    true
  end 
end