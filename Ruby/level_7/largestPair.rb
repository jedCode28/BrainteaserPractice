# https://www.codewars.com/kata/556196a6091a7e7f58000018
# 7kyu
# Given a sequence of numbers, this function finds the largest pair sum in the sequence.

def largest_pair_sum(num)
  x = num.sort.reverse
  x[0] + x[1]
end