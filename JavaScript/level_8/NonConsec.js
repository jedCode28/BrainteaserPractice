// https://www.codewars.com/kata/58f8a3a27a5c28d92e000144
// 8kyu
// My function finds the first element of an array that is not consecutive.
// If the whole array is consecutive then it returns null.

function firstNonConsecutive (arr) {
  for (let i = 0; i < arr.length - 1 ; i++)
    if ( arr[i + 1] - 1 !== arr[i] ) {
      return arr[i + 1]
    }
  return null
}