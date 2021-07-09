// https://www.codewars.com/kata/5721a78c283129e416000999
// 8kyu
// My function sorts even and odd numbers and inserts them into their respective arrays. 

function pickIt(arr){
  var odd=[],even=[];
  for (let i = 0; i < arr.length; i++){
   return[arr.filter((x) => x % 2 != 0), arr.filter((x) => x % 2 == 0)]
  }
  return [odd,even];
}