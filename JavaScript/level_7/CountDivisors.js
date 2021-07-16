// https://www.codewars.com/kata/542c0f198e077084c0000c2e
// 7kyu
// I wrote a function that takes a positive integer and returns the number of divisors.

function getDivisorsCnt(n){
  let r = 0
  for (let i = 0; i <= n; i++){
    if(n % i == 0){
      r++
    }
  }
  return r
}