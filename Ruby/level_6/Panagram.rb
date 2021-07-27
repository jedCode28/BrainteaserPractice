# https://www.codewars.com/kata/545cedaa9943f7fe7b000048
# 6kyu
# A pangram is a sentence that contains every single letter of the alphabet at least once.
# I wrote this function that when given a string, detects whether or not it is a pangram. It returns True if it is, False if not. I ignore numbers and punctuation.

def pangram?(s)
  y = s.downcase.split(//).sort.uniq
  y.keep_if { |i| i =~ /[a-z]/ }
  y.length == 26 ? true : false
end