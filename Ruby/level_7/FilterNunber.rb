# https://www.codewars.com/kata/55b051fac50a3292a9000025
# 8kyu

# A number has been mixed up with the text. My goal is to retrieve the number from the text, & return the number back to it's original state.
# My  task is to return a number from a string.
# I'm given a string of numbers and letters mixed up, I have to return all the numbers in that string in the order they occur.

def filter_string(s)
  s.delete('abcdefghijklmnopqrstuvwxyz ').to_i
end
