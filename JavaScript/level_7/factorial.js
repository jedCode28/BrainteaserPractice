// https://www.codewars.com/kata/54ff0d1f355cfd20e60001fc
// 7kyu
// I wrote a function to calculate factorial for a given input. If input is below 0 or above 12 it throws an exception of type RangeError.

function factorial(n){
  if(n === 0 || n === 1){
    return 1;
  } else if (n < 0 || n > 12){
    throw new RangeError("Err")
  } else {
    for(let i = n-1; i >= 1; i--){
      n *= i;
    }
  }
  return n
}