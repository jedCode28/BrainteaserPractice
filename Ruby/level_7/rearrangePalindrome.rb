# https://www.codewars.com/kata/5893fa478a8a23ef82000031
# 7kyu
# I wrote this function that when given a string s, finds out if its characters can be rearranged to form a palindrome.

def palindrome_rearranging(s)
  c = Hash.new(0)
  s.split('').each { |z| c[z] += 1}
  m = []
  n = []
  c.each_value { |i| m.push(i)}
  m.each do |i| 
    i % 2 != 0 ? n.push(i) : ''
  end 
  n.length > 1 ? false : true 
end