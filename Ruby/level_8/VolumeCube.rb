# https://www.codewars.com/kata/58cb43f4256836ed95000f97
# 8kyu
# I created a program that will take two lists of integers, a and b. Each list will consist of 3 positive integers above 0, representing the dimensions of cuboids a and b. It finds the difference of the cuboids' volumes regardless of which is bigger.

def find_difference(a, b)
  (a.inject(:*)-b.inject(:*)).abs
end