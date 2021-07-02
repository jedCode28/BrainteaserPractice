// https://www.codewars.com/kata/558fc85d8fd1938afb000014
// 7kyu
// I created a function that returns the sum of the two lowest positive numbers given an array of minimum 4 positive integers. No floats or non-positive integers will be passed.


function sumTwoSmallestNumbers(num) {  
  let x = num.sort(function(a,b){return a-b})
  return( x[0] + x[1] )
 }