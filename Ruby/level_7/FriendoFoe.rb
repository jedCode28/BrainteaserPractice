# https://www.codewars.com/kata/55b42574ff091733d900002f
# 7kyu
# I made a program that filters a list of strings and returns a list with only friends name in it.
# If a name has exactly 4 letters in it, you can be sure that it has to be a friend of yours! Otherwise, you can be sure he's not...




def friend(friends)
  x = []
  friends.each {
    |i| puts i.length
    if i.length == 4 
      x.push(i)
    end 
  }
    x
end