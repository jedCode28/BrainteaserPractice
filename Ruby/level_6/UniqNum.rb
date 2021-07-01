# https://www.codewars.com/kata/585d7d5adb20cf33cb000235
# 6kyu
# There is an array with some numbers. All numbers are equal except for one. Try to find it!
# It’s guaranteed that array contains at least 3 numbers.
# The tests contain some very huge arrays, so think about performance.



def find_uniq(arr)
  c = arr[0]/0.3
  y = arr.count { |i| i/0.3 == c }
  x = arr.uniq
  y == 1 ? x[0] : x[1]
end