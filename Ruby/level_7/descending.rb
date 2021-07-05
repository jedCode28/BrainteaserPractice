# https://www.codewars.com/kata/5467e4d82edf8bbf40000155
# 7kyu
# This function takes any non-negative integer as an argument and returns it with its digits in descending order. Essentially, it rearranges the digits to create the highest possible number.

def descending_order(n)
  x = n.to_s.split('').sort.reverse
  x.join('').to_i
end