# https://www.codewars.com/kata/578a8a01e9fd1549e50001f1
# 7kyu
# I wrote a function to test whether a period is late.
# My function takes three parameters:
# last - The Date object with the date of the last period
# today - The Date object with the date of the check
# cycleLength - Integer representing the length of the cycle in days
# It returns true if the number of days passed from last to today is greater than cycleLength. Otherwise, it returns false.

def period_is_late(last,today,cycle_length)
  if today - last > cycle_length 
    true
  else 
    false
  end 
end