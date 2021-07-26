# https://www.codewars.com/kata/58249d08b81f70a2fc0001a4
# 7kyu
# I wrote this little simple function that when given a number, returns the nearest number divisible by 10.

def closest_multiple_10(i)
  i.round(-1)
end