# https://www.codewars.com/kata/55d24f55d7dd296eb9000030
# 8kyu
# I wrote a program that finds the summation of every number from 1 to num. The number will always be a positive integer greater than 0.

def summation(num)
  arr = 1..num
  arr.reduce(&:+)
end