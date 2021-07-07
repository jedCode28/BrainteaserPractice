# https://www.codewars.com/kata/5704aea738428f4d30000914
# 8kyu
# I created a function that will return a string that combines all of the letters of the three inputed strings in groups. Taking the first letter of all of the inputs and grouping them next to each other. I did this for every letter.

def triple_trouble(x, y, z)
  [x, y, z].map(&:chars).transpose.join
end