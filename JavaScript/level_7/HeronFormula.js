// https://www.codewars.com/kata/57aa218e72292d98d500240f
// 7kyu
// Write function heron which calculates the area of a triangle with sides a, b, and c.

function heron(a, b, c) {
  let s = (a + b + c)/2
  return (s * (s-a) * (s-b) * (s-c)) ** .5
}