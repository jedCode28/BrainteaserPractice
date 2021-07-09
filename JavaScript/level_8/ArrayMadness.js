// https://www.codewars.com/kata/56ff6a70e1a63ccdfa0001b1
// 8kyu
// Given two integer arrays a, b, both of length >= 1, my program returns true if the sum of the squares of each element in a is strictly greater than the sum of the cubes of each element in b.

function arrayMadness(a, b) {
  if (a.reduce((acc, cur) => acc + (cur ** 2)) > b.reduce((acc, cur) => acc + (cur ** 3),0)){
    return true
  } else {
    return false
  }
}