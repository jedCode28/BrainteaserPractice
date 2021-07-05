# https://www.codewars.com/kata/525f50e3b73515a6db000b83
# 6kyu
# My function accepts an array of 10 integers (between 0 and 9), and returns a string of those numbers in the form of a phone number.

def create_phone_number(n)
  "(" + "#{n[0]}" + "#{n[1]}" + "#{n[2]}" + ")" + " " + "#{n[3]}" + "#{n[4]}" + "#{n[5]}" + "-" + "#{n[6]}" + "#{n[7]}" + "#{n[8]}" + "#{n[9]}"
end