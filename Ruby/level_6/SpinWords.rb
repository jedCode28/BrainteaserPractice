# https://www.codewars.com/kata/5264d2b162488dc400000001
# 6kyu
# I Wrote a function that takes in a string of one or more words, and returns the same string, but with all five or more letter words reversed.
# Strings passed in will consist of only letters and spaces.
# Spaces will be included only when more than one word is present.


def spin_words(string)
  word = string.split.map {|s| s.length > 4 ? s.reverse : s}
  word.join(' ')
end