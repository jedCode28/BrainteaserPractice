// https://www.codewars.com/kata/5ce9c1000bab0b001134f5af
// 8kyu
// Given a month as an integer from 1 to 12, return to which quarter of the year it belongs as an integer number.


const quarterOf = (m) => {
  let x = m / 3.3
  return Math.ceil(x)
      
}