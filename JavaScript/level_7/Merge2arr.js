// https://www.codewars.com/kata/583af10620dda4da270000c5
// 7kyu
// This function combines two arrays by alternatingly taking elements from each array in turn.

function mergeArrays(a, b) {
  let arr =[],
  i, l = Math.min(a.length, b.length)
   for (i=0; i<l ;i++){
     arr.push(a[i], b[i])
   }
   arr.push(...a.slice(l), ...b.slice(l))
   return arr
 }