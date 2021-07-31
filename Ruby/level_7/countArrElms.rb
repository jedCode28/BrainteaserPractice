# https://www.codewars.com/kata/5569b10074fe4a6715000054
# 7kyu
# I wrote a function that takes an array and counts the number of each unique element present.

def count(r)
  c = Hash.new(0)
  r.each { |z| c[z] += 1}
  c
end