// https://www.codewars.com/kata/515e271a311df0350d00000f
// 8kyu
// I wrote a function that squares each number passed into it and then sums the results together.


function squareSum(n){
  if (n == false){
    return 0
  } else {
  let x = n.map((i) => i**2)
  return x.reduce((a,b) => a + b)
    }
}