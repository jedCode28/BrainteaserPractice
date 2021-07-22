# https://www.codewars.com/kata/5949481f86420f59480000e7
# 7kyu
# I wrote a function that when given a list of integers, determines whether the sum of its elements is odd or even.
# It returs as a string matching "odd" or "even".
# If the input array is empty it is considered as: [0] (array with a zero).



def odd_or_even(r)
  if r == [] || r == [0]
    "even"
  elsif r.inject(:+)%2 == 0
    "even"
  else 
     "odd"
  end 
end