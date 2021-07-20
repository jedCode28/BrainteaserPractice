# https://www.codewars.com/kata/594b8e182fa0a0d7fc000875
# 7kyu
# I wrote this function that takes a string and counts the amount of "e"s in that string. 
# If given String doesn't contain any "e", it returns: `"There is no "e"."`If given String is empty, it returns an empty String.
# If given String is `null`/`None`/`nil`, it returns `null`/`None`/`nil`

def find_e(s)
if s == ""
  ""
elsif s.nil? 
  nil
elsif s.include?("e") || s.include?("E")
  s.count("e" + "E").to_s
else 
  "There is no \"e\"."
end 
end