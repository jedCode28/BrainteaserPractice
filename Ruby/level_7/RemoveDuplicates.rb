# https://www.codewars.com/kata/5b39e3772ae7545f650000fc
# 7 kyu
# The task is to remove all duplicate words from a string, leaving only single (first) words entries.

def remove_duplicate_words(s)
  s.split(' ').uniq.join(' ')
end