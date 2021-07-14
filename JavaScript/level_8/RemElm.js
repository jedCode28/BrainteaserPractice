// https://www.codewars.com/kata/5769b3802ae6f8e4890009d2
// 8kyu
// I wrote a function that takes an array and removes every second element from the array. It always keeps the first element and starts removing with the next element.

function removeEveryOther(arr){
  var x = arr.filter(function(v, i){
    return i % 2 == 0;
  });
  return x
}