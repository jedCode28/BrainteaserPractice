// https://www.codewars.com/kata/56747fd5cb988479af000028
// 7kyu
// Given a word, my function returns the middle character of the word. If the word's length is odd, it returns the middle character. If the word's length is even, it returns the middle 2 characters.

function getMiddle(s){
  let x = s.length/2
  let y = s.length/2 - 1
  if (s.length % 2 ==0 ){
    return (s.charAt(y) + s.charAt(x))
  } else {
    return s.charAt(x)
  }
}