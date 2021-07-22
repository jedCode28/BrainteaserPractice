# https://www.codewars.com/kata/559590633066759614000063
# 7kyu
# I wrote a function that returns both the minimum and maximum number of the given list/array.

def min_max(lst)
  x = lst.sort
  m = []
  m.push(x.first)
  m.push(x.last)
  m
end