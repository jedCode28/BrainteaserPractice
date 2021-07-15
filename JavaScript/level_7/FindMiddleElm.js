// https://www.codewars.com/kata/545a4c5a61aa4c6916000755
// 7kyu
// I created a function that when provided with a triplet, returns the index of the numerical element that lies between the other two elements.
// The input to the function will be an array of three distinct numbers (Haskell: a tuple).



var gimme = function (a) {
  let z = Math.max(...a)
  let y = Math.min(...a)
  let f = a.find(e => e !== y && e !== z)
  return a.indexOf(f)
};