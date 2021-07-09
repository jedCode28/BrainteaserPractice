# https://www.codewars.com/kata/54da5a58ea159efa38000836
# 6kyu
# Given an array of integers, my function finds the one that appears an odd number of times.
# There will always be only one integer that appears an odd number of times.


def find_it(seq)
  counts = Hash.new 0
  k = ''
  seq.each do |int| 
    counts[int] += 1
    end 
  counts.each do |key,v|
    if v % 2 != 0
      k = key 
    end 
    end 
#   seq.each_with_object(Hash.new(0)){ 
#     |seq,counts| counts[seq] +=1 
#   }
  k 
end