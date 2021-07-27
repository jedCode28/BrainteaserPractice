# https://www.codewars.com/kata/5287e858c6b5a9678200083c
# 6kyu
# A Narcissistic Number is a positive number which is the sum of its own digits,
# each raised to the power of the number of digits in a given base. 
# I wrote this function to return true or false depending upon whether the given number is a Narcissistic number in base 10.

def narcissistic?(v)
  m = []
  if v <= 9 
    true
  else  
    w = v.to_s.split('').map(&:to_i)
    x = w.length
    w.each do |i|
      m.push(i ** x)
    end 
    y = m.inject(:+)
    puts y
    v == y ? true : false
  end 
end