# https://www.codewars.com/kata/55afed09237df73343000042
# 7kyu
# I wrote a function to find if a number is lucky or not. If the sum of all digits is 0 or multiple of 9 then the number is lucky.
# My function will return true for lucky numbers and false for others.


def is_lucky(n)
  m = []
  r = n.to_s.split(//)
  r.each do |i|
    m.push(i.to_i)
  end 
  x = m.inject(:+)
  if x % 9 == 0
    true
  else 
    false
  end 
end