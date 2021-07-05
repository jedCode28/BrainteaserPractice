# https://www.codewars.com/kata/5a3fe3dde1ce0e8ed6000097
# 8kyu
# Given a year, this function returns the century it is in.

def century(y)
  (y % 100 == 0 ? y/100 : (y/100) +1)
end