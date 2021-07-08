// https://www.codewars.com/kata/56f8fe6a2e6c0dc83b0008a7
// 8kyu
// Given a program sumSquares that takes an array as input and returns the sum of the squares of each item in an array, my function shortens the code such that it meets the requirements.

function sumSquares(r) {
  var s = r.reduce((x, y) => {
    return x + y ** 2}, 0)
  return s
}