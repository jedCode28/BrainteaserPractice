# https://www.codewars.com/kata/54ff3102c1bad923760001f3
# 7kyu
# My function returns the number (count) of vowels in the given string.
# We will consider a, e, i, o, u as vowels for this one (but not y).
# The input string will only consist of lower case letters and/or spaces.

def get_count(input_str)
  input_str.downcase.count("aeiou")
end