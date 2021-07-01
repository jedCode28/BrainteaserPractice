// https://www.codewars.com/kata/52f3149496de55aded000410
// 7kyu
// I wrote a function named sumDigits which takes a number as input and returns the sum of the absolute value of each of the number's decimal digits. 
// *Assuming that all numbers in the input will be integer values.*

function sumDigits(n) {
  let x = Math.abs(n)
  let y = Array.from(x.toString()).map(Number)
  return y.reduce((a,b) => a+b, 0)
}