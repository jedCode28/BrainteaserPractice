# https://www.codewars.com/kata/52fba66badcd10859f00097e
# 7kyu
# My function takes a string and returns a new string with all vowels removed.
# Note: for this kata y isn't considered a vowel.

def disemvowel(str)
  str.gsub(/[aeiouAEIOU]/, '')
end