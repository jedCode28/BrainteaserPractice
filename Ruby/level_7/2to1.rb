# https://www.codewars.com/kata/5656b6906de340bd1b0000ac
# 7kyu
# This takes 2 strings s1 and s2 including only letters from ato z. Return a new sorted string, the longest possible, containing distinct letters - each taken only once - coming from s1 or s2.

def longest(a1, a2)
  (a1 + a2).split('').uniq.sort.join
end