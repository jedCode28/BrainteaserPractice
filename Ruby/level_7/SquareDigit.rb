# https://www.codewars.com/kata/546e2562b03326a88e000020
# 7kyu
# My function squares every digit of a number and concatenates them.
# Note: The function accepts an integer and returns an integer


def square_digits num
  num.to_s.split('').map!{|y| y.to_i**2}.join('').to_i
 end