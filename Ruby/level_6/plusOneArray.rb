# https://www.codewars.com/kata/5514e5b77e6b2f38e0000ca9/train/ruby
# 6kyu

# THIS FUNCTION FAILED ONE HIDDEN TEST CASE, THE INSTRUCTIONS ARE NOT CLEAR WHAT IS AN INVALID INPUT

# THESE ARE THE INSTRUCTIONS : 
# Given an array of integers of any length, return an array that has 1 added to the value represented by the array.
# the array can't be empty
# only non-negative, single digit integers are allowed
# Return nil (or your language's equivalent) for invalid inputs.




def up_array(r) 
  if r.empty? 
    nil 
  end 
  r.each do |i| 
    i < 0 || i > 9 || i.class != Integer ? r = {} : r
  end 
  if r.class == Hash
    nil
  else 
    x = r.join('').to_i + 1
    y = x.to_s.split('').map(&:to_i)
  end 
  y 
end