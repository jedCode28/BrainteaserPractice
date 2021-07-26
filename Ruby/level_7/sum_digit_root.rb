# https://www.codewars.com/kata/541c8630095125aba6000c00
# 7kyu
# I wrote this function that when given n, it takes the sum of the digits of n. If that value has more than one digit, 
# it continues reducing in this way until a single-digit number is produced. Test Assumption: the input will be a non-negative integer.


def digital_root(n)
  m = []
  x = n.to_s.split(//)
  x.each do |i|
    m.push(i.to_i)
  end 
  y = m.inject(:+)
  if y >= 10 
    digital_root(y)
  else 
    y
  end 
end