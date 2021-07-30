# https://www.codewars.com/kata/5ac6932b2f317b96980000ca
# 7kyu
# I wrote this function that when given a list of digits,
# returns the smallest number that could be formed from these digits, 
# using the digits only once (ignoring duplicates).

# Test Assumptions: Only positive integers will be passed to the function (> 0 ), no negatives or zeros.

def min_value(d)
  e = d.uniq.sort
  e.join('').to_i
end