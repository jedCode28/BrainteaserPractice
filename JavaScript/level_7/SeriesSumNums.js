// https://www.codewars.com/kata/55f2b110f61eb01779000053
// 7kyu
// Given two integers a and b, which can be positive or negative, I wrote a function that found the sum of all the integers between and including them and return it. If the two numbers are equal return a or b.


function getSum( a,b ){
  let arr = []
 if (a===b){
   return (a)
 } else if(a > b){
   for (let i = b; i <= a; i++){
     arr.push(i)
   }
   return arr.reduce((x,y) => x + y)
 } else if (a < b){
   for ( let i =a; i <= b; i++ ){
     arr.push(i)
   }
   return arr.reduce((x,y) => x + y)
 }
}