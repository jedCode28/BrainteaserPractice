# https://www.codewars.com/kata/529eef7a9194e0cbc1000255
# 7kyu
# These anagrams are case insensitive.
# The function returns true if the two arguments given are anagrams of each other; return false otherwise.

def is_anagram(t, o)
  a = t.downcase.split('').sort
  b = o.downcase.split('').sort
  b == a ? true : false
end