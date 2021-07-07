// https://www.codewars.com/kata/5513795bd3fafb56c200049e
// 8kyu
// This function returns an array of the first (n) multiples of (x).

// Assuming both the given number and the number of times to count will be positive numbers greater than 0.

// It returns the results as an array 

function countBy(x, n) {
  var z = [];
    for(let i = x; i <= (x*n); i += x ){
      z.push(i)
    }
  return z;
}