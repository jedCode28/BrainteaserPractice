# https://www.codewars.com/kata/54bf1c2cd5b56cc47f0007a1
# 6kyu  
# This function returns the count of distinct case-insensitive alphabetic characters and numeric digits that occur more than once in the input string. The input string can be assumed to contain only alphabets (both uppercase and lowercase) and numeric digits.



def duplicate_count(x)
  p = x.downcase.split("")
  p.uniq.count { |char| p.count(char) > 1 }
end