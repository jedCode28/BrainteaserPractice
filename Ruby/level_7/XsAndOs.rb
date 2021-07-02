# https://www.codewars.com/kata/55908aad6620c066bc00002a
# 7kyu
# This function checks to see if a string has the same amount of 'x's and 'o's. The method returns a boolean and be case insensitive. The string can contain any char.


def XO(str)
  p = str.downcase
  g = p.count("x")
  h = p.count("o")
  (g == h ? true : false)
end