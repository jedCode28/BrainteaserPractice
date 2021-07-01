// https://www.codewars.com/kata/56bc28ad5bdaeb48760009b0
// 8kyu
// My goal is to create a function that removes the first and last characters of a string. Given one parameter, the original string. Don't worry with strings with less than two characters.


function removeChar(str){
  let x = str.split('')
  x.shift()
  x.pop()
  return x.join('')
 
 };